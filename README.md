This layer is a fork of https://github.com/mendersoftware/meta-mender/tree/master/meta-mender-demo.

I use this layer when I build Mender for my Raspberry Pi 2 (ralink WiFi USB dongle) and contains some network configuration and Mender client optimization for testing purpose.

This layer contains the following configuration options:
- MENDER_DEMO_WIFI_SSID
	- SSID to which the device will automatically connect to.
- MENDER_DEMO_WIFI_PASSKEY
	- Passkey of WiFI network to which the device will automatically connect to.
- MENDER_DEMO_HOST_ADDRESS
	- IP address of your Mender server.

DO NOT USE THIS LAYER IN PRODUCTION!
