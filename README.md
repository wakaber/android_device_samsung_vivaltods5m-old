android_device_vivaltods5m
======================

Device tree for Samsung Galaxy Ace 4 SM-G313HU
* Must have applied [these]("https://gist.github.com/pawitp/9433442", "I9082 Multi-SIM patches") patches or RIL won't work properly.
* Actually, we need to use local manifest instead of cm.dependencies since the device isn't in official cm repo

Works:
* Audio
* Bluetooth
* Calls
* Camera
* GPS
* Networking, Text messages
* USB (Tethering, file sharing etc.)
* Wifi tethering
* Wifi

Not tested:
* FM-radio