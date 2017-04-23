##Device configuration for MyPhone My28/My28s

=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.2GHz Cortex-A7
CHIPSET | Spreadtrum SC7731GEA
GPU     | Mali-400
Memory  | 512 MB
Shipped Android Version | Android 5.1.1 / Android 6.0
Storage | 4/8 GB
MicroSD | up to 32 GB
Battery | 1450 mAh Li-Ion (removable)
Dimensions | 144.8 x 72.1 x 8.6 mm
Display | WVGA 480 x 800 pixels, 4.0"
Rear Camera  | 5.0 MP, LED flash
Front Camera | 2.0 MP

##Building instructions

### What do you need?
* 50GB left of your hard disk space
* Basic skills / knowledge of Linux

### Building steps
* 1. Sync Android source
* 2. Copy this file ([my28s.xml](https://github.com/bjdag1234/android_local_manifests/cm14.1-my28s/my28s.xml)) to `.repo/local_manifests` (if that folder doesn't exist then "mkdir" it)
* 3. `repo sync` again
* 5. After sync, type `. build/envsetup.sh && brunch my28s`
