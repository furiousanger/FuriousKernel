#!/sbin/bb/busybox ash
#
# fkhacks.sh - simple configuration manager for furiouskernel
#

# 4.3 hack - start daemonsu if binary exists
[ -f "/system/xbin/daemonsu" ] && /system/xbin/daemonsu --auto-daemon &

# init.d support on non-CM ROMs
[ ! -f "/system/bin/sysinit" ] && /sbin/bb/busybox run-parts /system/etc/init.d

