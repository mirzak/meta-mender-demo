FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MENDER_DEMO_HOST_ADDRESS ?= "127.0.0.1"

do_install_append() {
	sed -i -e 's#[@]MENDER_DEMO_HOST_ADDRESS[@]#${MENDER_DEMO_HOST_ADDRESS}#' ${WORKDIR}/hosts

	install -m 0644 ${WORKDIR}/hosts ${D}${sysconfdir}/hosts
}
