require conf/kp/standalone-tc.conf

DEBUG_BUILD = "1"

FILESEXTRAPATHS_append := ":${THISDIR}/binutils"

SRC_URI_append = " \
    file://0056-Patch-MicroBlaze-Invalid-data-offsets-pointer-after-.patch \
"