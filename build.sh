#!/bin/bash

#cp linux.config build/.config

cd linux/

# https://wiki.archlinux.org/index.php/Kernels/Traditional_compilation

make O=../build/ olddefconfig
make O=../build/ -j 2

# In Vagrant
# sudo make O=/vagrant/build/ modules_install
# sudo make O=/vagrant/build/ install

# sudo cp /etc/mkinitcpio.d/linux.preset /etc/mkinitcpio.d/linux480.preset
# sudo vim /etc/mkinitcpio.d/linux480.preset

# sudo cp -v ../build/arch/x86_64/boot/bzImage /boot/vmlinuz-linux480
# sudo mkinitcpio -p linux480
# sudo grub-mkconfig -o /boot/grub/grub.cfg
# sudo cp ../build/System.map /boot/System.map-4.8.0-rc4-ARCH-00162-g071e31e-dirty
