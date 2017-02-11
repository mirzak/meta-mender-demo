FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
  file://server.crt \
  file://mender-device-identity \
"

MENDER_UPDATE_POLL_INTERVAL_SECONDS = "5"
MENDER_INVENTORY_POLL_INTERVAL_SECONDS = "5"
MENDER_RETRY_POLL_INTERVAL_SECONDS = "10"

do_compile_prepend() {
  bbwarn "You are building with the mender-demo layer, which is not intended for production use"
}

do_install_append() {
  install -d ${D}/${datadir}/mender/identity
  install -t ${D}/${datadir}/mender/identity -m 0755 \
          ${WORKDIR}/mender-device-identity
}
