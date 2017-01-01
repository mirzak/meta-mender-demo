FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MENDER_DEMO_WIFI_SSID ?= "ssid"
MENDER_DEMO_WIFI_PASSKEY ?= "password"

SRC_URI += " file://wpa_supplicant-wlan0.conf"

FILES_${PN} += "${sysconfdir}/wpa_supplicant/wpa_supplicant-wlan0.conf"

do_install_append() {
	sed -i -e 's#[@]MENDER_DEMO_WIFI_PASSKEY[@]#${MENDER_DEMO_WIFI_PASSKEY}#' ${WORKDIR}/wpa_supplicant-wlan0.conf
	sed -i -e 's#[@]MENDER_DEMO_WIFI_SSID[@]#${MENDER_DEMO_WIFI_SSID}#' ${WORKDIR}/wpa_supplicant-wlan0.conf

	install -d ${D}${sysconfdir}/wpa_supplicant
	install -m 0755 ${WORKDIR}/wpa_supplicant-wlan0.conf ${D}${sysconfdir}/wpa_supplicant

	install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
	ln -sf ${systemd_unitdir}/system/wpa_supplicant@.service ${D}${sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service
}
