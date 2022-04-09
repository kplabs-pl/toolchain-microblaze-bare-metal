FILESEXTRAPATHS_append := ":${THISDIR}/binutils"

# SRC_URI_append = " \
#     file://0050-Fix-i386-md_pseudo_table.patch \
#     "
SRC_URI_append = " \
    file://0056-Patch-MicroBlaze-Invalid-data-offsets-pointer-after-.patch \
"
require conf/kp/standalone-tc.conf