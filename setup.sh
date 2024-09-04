mkfs.vfat /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
pacstrap /mnt base base-devel linux linux-firmware linux-headers nano vim bash-completion grub efibootmgr networkmanager nvidia
genfstab /mnt
genfstab /mnt >> /mnt/etc/fstab
arch-chroot /mnt
systemctl enable NetworkManager
