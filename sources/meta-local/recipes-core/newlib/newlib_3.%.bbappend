EXTRA_OECONF_remove_xilinx-standalone-kp = " \
	--enable-newlib-io-c99-formats \
	--enable-newlib-io-long-long \
	--enable-newlib-io-float \
	--enable-newlib-io-long-double \
"

EXTRA_OECONF_append_xilinx-standalone-kp = " \
	--enable-newlib-reent-small \
	--enable-newlib-retargetable-locking \
	--disable-newlib-fvwrite-in-streamio \
	--disable-newlib-fseek-optimization \
	--disable-newlib-wide-orient \
	--enable-newlib-nano-malloc \
	--disable-newlib-unbuf-stream-opt \
	--enable-lite-exit \
	--enable-newlib-global-atexit \
	--enable-newlib-nano-formatted-io \
"
