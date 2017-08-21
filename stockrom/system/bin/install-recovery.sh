#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8093696 5468bd566a11e7a77016df7e13b4c0d2b24f74ce 5734400 5d5cad462bfff66904c0c13539e8f787a322fc65
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:8093696:5468bd566a11e7a77016df7e13b4c0d2b24f74ce; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5734400:5d5cad462bfff66904c0c13539e8f787a322fc65 EMMC:/dev/block/mmcblk0p6 5468bd566a11e7a77016df7e13b4c0d2b24f74ce 8093696 5d5cad462bfff66904c0c13539e8f787a322fc65:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
