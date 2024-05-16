# Arch install notes

### Pre-system setup

##### Internet
ethernet or `iwctl` + `ping`

---

##### Partition disks
`cfdisk`:

`gpt` if options

delete all `sdx`

`new` partitions:
- 100M: EFI boot (`sda1`)
- 4G: swap (`sda2`) 
- `<CR>`: filesystem (`sda3`)

`write`

---

##### Format disks
```bash
mkfs.ext4 /dev/sda3
mkfs.fat -F 32 /dev/sda1
mkswap /dev/sda2
```

---

##### Mount disks
```bash
mount /dev/sda3 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mount/boot/efi
swapon /dev/sda2
```

---

##### pacman init
```bash
pacstrap /mnt base linux linux-firmware base-devel grub efibootmgr neovim networkmanager
```

---

### system setup

```bash
# fstab
genfstab /mnt > /mnt/etc/fstab
```

```bash
# log in to root
arch-chroot /mnt
```

##### Local time
```bash
# time
ln -sf /usr/share/zoneinfo/America/{city} /etc/localtime
date # to check
hwclock --systohc
```

##### Keyboard locale
In `/etc/locale.gen`, uncomment `en_US.UTF8 UTF-8`
```bash
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
```

##### Hostname, root, user credentials
```bash
echo {hostname} > /etc/hostname

passwd # root password. DO NOT FORGET

# have a ~home (-m), add to predefined group (-G wheel), set shell (-s)
useradd -m -G wheel -s /bin/bash {username}

passwd {username}

visudo # and uncomment `WHEEL ALL=(ALL) ALL`
```

##### systemd + grub before reboot

```bash
systemctl enable NetworkManager

# install grub to disk, and apply config
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```

```bash
exit
umount -a
reboot
```

---

##### user config

```bash
# TODO: document + add more (docker (with systemctl), docker-compose, python, python-pip
sudo pacman -S plasma sddm konsole firefox git nodejs npm postgresql tmux ripgrep

# ohmyzsh (TODO test). may need pacman `zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo systemctl enable --now sddm

```
