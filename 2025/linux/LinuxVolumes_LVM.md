# Linux Volumes and Logical Volume Management (LVM)

## 1. Understanding Volumes in Linux

A volume in Linux is a physical or virtual storage device that appears to the operating system as a storage unit. These can be:
- Physical hard drives
- Partitions on physical drives
- Virtual storage devices (like AWS EBS volumes)
- Network-attached storage

## 2. Types of Volumes

### Physical Volumes (PV)
- Raw storage devices or partitions that form the basis of LVM
- Can be entire hard drives or partitions
- Example: /dev/sda, /dev/xvdf

### Volume Groups (VG)
- Collection of one or more physical volumes
- Acts as a pool of storage space
- Can be extended or reduced by adding/removing physical volumes

### Logical Volumes (LV)
- Virtual partitions created from volume groups
- Similar to traditional partitions but more flexible
- Can be resized dynamically without system downtime
- Can span across multiple physical volumes

## 3. Creating AWS EBS Volumes and Attaching to EC2

1. Create EBS Volumes in AWS Console:
   - Navigate to EC2 → Volumes → Create Volume
   - Create three volumes:
     * Volume 1: 10 GB
     * Volume 2: 12 GB
     * Volume 3: 14 GB
   - Select same availability zone as your EC2 instance
   
2. Attach Volumes:
   - Select each volume → Actions → Attach Volume
   - Choose your EC2 instance
   - They will appear as /dev/xvdf, /dev/xvdg, /dev/xvdh

## 4. Creating Physical Volumes

```bash
# Switch to root user
sudo su

# Enter LVM shell
lvm

# Create physical volumes
lvm> pvcreate /dev/xvdf /dev/xvdg /dev/xvdh

# View physical volumes
lvm> pvs        # Brief summary
lvm> pvdisplay  # Detailed information
```

What happens:
- `pvcreate` initializes physical volumes for use with LVM
- Writes a label at the start of the device
- Creates metadata area for LVM information

## 5. Creating Volume Groups

```bash
# Create volume group named 'linux_vg' using two physical volumes
lvm> vgcreate linux_vg /dev/xvdf /dev/xvdg

# View volume groups
lvm> vgs        # Brief summary
lvm> vgdisplay  # Detailed information
```

This:
- Creates a new volume group named 'linux_vg'
- Combines storage from /dev/xvdf and /dev/xvdg
- Makes the combined space available for logical volumes

## 6. Creating Logical Volumes

```bash
# Create logical volume of 10GB
lvm> lvcreate -L 10G -n linux_lv linux_vg

# View logical volumes
lvm> lvs        # Brief summary
lvm> lvdisplay  # Detailed information
```

Parameters explained:
- `-L 10G`: Specifies size (10 gigabytes)
- `-n linux_lv`: Names the logical volume
- `linux_vg`: Specifies which volume group to use

## 7. Mounting and Formatting

### For Logical Volume:

```bash
# Create mount point
mkdir /mnt/linux_lv_mount

# Format with ext4 filesystem
mkfs.ext4 /dev/linux_vg/linux_lv

# Mount the logical volume
mount /dev/linux_vg/linux_lv /mnt/linux_lv_mount
```

### For Regular Disk (xvdh):

```bash
# Create mount point
mkdir /mnt/linux_disk_mount

# Format with ext4 filesystem
mkfs -t ext4 /dev/xvdh

# Mount the disk
mount /dev/xvdh /mnt/linux_disk_mount
```
## 8. Disk and Storage Management Commands

### Using lsblk (List Block Devices)

The `lsblk` command lists information about all available block devices (storage devices).

```bash
# Basic usage
lsblk

# Sample output:
NAME                      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
xvda                      202:0    0    8G  0 disk
└─xvda1                   202:1    0    8G  0 part /
xvdf                      202:80   0   10G  0 disk
xvdg                      202:96   0   12G  0 disk
xvdh                      202:112  0   14G  0 disk
```

Common options:
```bash
# Show filesystem information
lsblk -f
# Sample output:
NAME        FSTYPE      LABEL UUID                                   MOUNTPOINT
xvda
└─xvda1     ext4              123e4567-e89b-12d3-a456-426614174000 /
xvdf        LVM2_member       789e4567-e89b-12d3-a456-426614174000
xvdg        LVM2_member       abc4567-e89b-12d3-a456-426614174000

# Show complete device information
lsblk -a

# Show device size in bytes
lsblk -b

# Show device permissions and owner
lsblk -m
```

Key information in output:
- NAME: Device name
- MAJ:MIN: Major and minor device numbers
- RM: Removable device (0 = no, 1 = yes)
- SIZE: Device size
- RO: Read-only device (0 = no, 1 = yes)
- TYPE: Device type (disk, part, lvm)
- MOUNTPOINT: Mount location

### Using df (Disk Free)

The `df` command shows disk space usage of mounted filesystems.

```bash
# Show human-readable sizes
df -h
# Sample output:
Filesystem                     Size  Used Avail Use% Mounted on
/dev/xvda1                    8.0G  4.2G  3.8G  53% /
/dev/mapper/linux_vg-linux_lv  9.8G  1.2G  8.1G  13% /mnt/linux_lv_mount
/dev/xvdh                     13.6G  1.6G  11G   13% /mnt/linux_disk_mount

# Show filesystem type
df -T
# Sample output:
Filesystem                    Type     Size  Used Avail Use% Mounted on
/dev/xvda1                   ext4     8.0G  4.2G  3.8G  53% /
/dev/mapper/linux_vg-linux_lv ext4    9.8G  1.2G  8.1G  13% /mnt/linux_lv_mount

# Show inode information
df -i
```

Common options:
```bash
# Show all filesystems including special ones
df -a

# Exclude specific filesystem types
df -x tmpfs -x devtmpfs

# Print sizes in bytes
df --bytes
```

Usage examples:
```bash
# Check space on specific mount point
df -h /mnt/linux_lv_mount

# Check all ext4 filesystems
df -t ext4 -h

# Monitor disk space usage over time
watch df -h
```

Important Notes:
1. Always verify device names before formatting
2. Formatting will erase all data on the volume
3. For permanent mounting, add entries to /etc/fstab
4. Use `lsblk` command to verify attached volumes
5. Backup important data before LVM operations

Best Practices:
- Always use meaningful names for VGs and LVs
- Leave some free space in VGs for future expansion
- Regularly monitor volume usage with `df -h`
- Document your LVM configuration
- Test mounting and unmounting before production use
