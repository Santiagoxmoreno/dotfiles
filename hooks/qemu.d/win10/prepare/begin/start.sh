#!/bin/bash
# Helpful to read output when debugging
set -x

# Unbind VTconsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind
# Some machines might have more than 1 virtual console. Add a line for each corresponding VTConsole
# echo 0 > /sys/class/vtconsole/vtcon1/bind

# Unbind EFI-Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

# Avoid a race condition by waiting a couple of seconds. This can be calibrated to be shorter or longer if required for your system
# sleep 5

# Unload all Nvidia drivers
modprobe -r nvidia_drm
modprobe -r nvidia_modeset
modprobe -r nvidia
modprobe -r i2c_nvidia_gpu
modprobe -r nvidia_uvm

# Unbind the GPU from display driver
virsh nodedev-detach pci_0000_09_00_0 #gpu
virsh nodedev-detach pci_0000_09_00_1 #audio
virsh nodedev-detach pci_0000_09_00_2 #usb
virsh nodedev-detach pci_0000_09_00_3 #usb

# Load VFIO kernel module
modprobe vfio
modprobe vfio_pci
modprobe vfio_iommu_type1
