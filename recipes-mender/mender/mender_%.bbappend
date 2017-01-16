FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://server.crt"

MENDER_UPDATE_POLL_INTERVAL_SECONDS = "5"
MENDER_INVENTORY_POLL_INTERVAL_SECONDS = "5"
MENDER_RETRY_POLL_INTERVAL_SECONDS = "10"

do_compile_prepend() {
  bbwarn "You are building with the mender-demo layer, which is not intended for production use"
}
>>>>>>> e43f0542da56ad055ad24b577e29ecadb4d3a590
