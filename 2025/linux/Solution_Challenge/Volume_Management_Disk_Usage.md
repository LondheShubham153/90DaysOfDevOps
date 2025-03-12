# Volume Management & Disk Usage Task

## Overview

This task involves creating a **directory**, mounting a **new volume** (or loop device for practice), and verifying the setup using disk management commands.

## Steps

1. **Create a directory** `/mnt/devops_data` for mounting the volume.
2. **Create a loop device** (for local practice if a real volume isn’t available).
3. **Mount the volume** to `/mnt/devops_data`.
4. **Verify the mount status** using `df -h` and `mount | grep devops_data`.

## Commands Used

To perform this task, use the following commands:

```bash
# Create directory for mounting
mkdir -p /mnt/devops_data

# Create a loopback file (for practice, if no real volume is available)
dd if=/dev/zero of=/tmp/devops_volume.img bs=1M count=100

# Set up a loop device
losetup /dev/loop0 /tmp/devops_volume.img

# Format the loop device with ext4 filesystem
mkfs.ext4 /dev/loop0

# Mount the volume to the directory
mount /dev/loop0 /mnt/devops_data

# Verify disk usage and mounted volume
df -h
mount | grep devops_data
```

## Expected Output

After running `df -h`, you should see:

```bash
Filesystem      Size  Used Avail Use% Mounted on
/dev/loop0      100M  1M   99M  1%   /mnt/devops_data
```

And after running `mount | grep devops_data`:

```bash
/dev/loop0 on /mnt/devops_data type ext4 (rw,relatime)
```

## Notes

- The **loop device** method is used for practice if a real volume is not available.
- The `losetup` command sets up a loopback device to mimic a storage device.
- **Unmount the volume** when done:
  ```bash
  umount /mnt/devops_data
  losetup -d /dev/loop0
  ```
- Ensure you have `sudo` permissions to execute these commands.

## Conclusion

This task helps in understanding **disk usage, volume management, and mounting storage** in Linux systems.
