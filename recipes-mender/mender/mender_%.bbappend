FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://server.crt"

MENDER_UPDATE_POLL_INTERVAL_SECONDS = "5"
MENDER_INVENTORY_POLL_INTERVAL_SECONDS = "5"
MENDER_RETRY_POLL_INTERVAL_SECONDS = "10"

MENDER_SERVER_URL = "https://docker.mender.io:8080"

do_compile_prepend() {
  bbwarn "You are building with the mender-demo layer, which is not intended for production use"
}
