#!/bin/bash
set -x

# Unload VFIO-PCI Kernel Driver
modprobe -r vfio_pci
modprobe -r vfio_iommu_type1
modprobe -r vfio

# Re-Bind GPU to our display drivers
virsh nodedev-reattach pci_0000_09_00_0 #gpu
virsh nodedev-reattach pci_0000_09_00_1 #audio
virsh nodedev-reattach pci_0000_09_00_2 #usb
virsh nodedev-reattach pci_0000_09_00_3 #usb

# Read our nvidia configuration when before starting our graphics
nvidia-xconfig --query-gpu-info > /dev/null 2>&1

# Re-Bind EFI-Framebuffer
echo "efi-framebuffer.0" > /sys/bus/platform/drivers/efi-framebuffer/bind

# Rebind VT consoles
echo 1 > /sys/class/vtconsole/vtcon0/bind

# Load nvidia drivers
modprobe nvidia_drm
modprobe nvidia_modeset
modprobe nvidia
modprobe nvidia_uvm

# Wake terminal 
setterm --blank poke 
