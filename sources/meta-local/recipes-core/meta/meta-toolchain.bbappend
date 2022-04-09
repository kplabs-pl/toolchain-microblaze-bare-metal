HOST_DEPENDS_remove = "nativesdk-qemu"

python () {
    if d.getVar('SDK_ARCHIVE_TYPE') == 'zip' and '-mingw32' in d.getVar('SDKMACHINE'):
        d.setVar('SDK_ARCHIVE_CMD', 'cd ${SDK_OUTPUT}/${SDKPATH}; zip -r ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME}.${SDK_ARCHIVE_TYPE} .')
}