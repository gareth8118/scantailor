FILE(
	WRITE "${TARGET_FILE}"
	"configure -platform ${PLATFORM} -debug-and-release -shared -fast"
	" -no-gif -system-zlib -system-libpng -no-libmng -no-libtiff -system-libjpeg"
	" -no-openssl -no-qt3support -no-style-plastique -no-style-cleanlooks"
	" -no-style-motif -no-style-cde -qt-style-windowsxp -qt-style-windowsvista"
	" -no-phonon -no-webkit -no-script -no-scripttools -no-declarative"
	" -nomake examples -nomake demos -nomake docs"
	" ${MAYBE_SKIP_TOOLS}"
	" -opensource -confirm-license -no-ltcg"
	" -I \"${JPEG_INCLUDE_DIR}\" -I \"${ZLIB_INCLUDE_DIR}\""
	" -I \"${PNG_INCLUDE_DIR}\" -L \"${JPEG_LINK_DIR}\" -L \"${ZLIB_LINK_DIR}\""
	" -L \"${PNG_LINK_DIR}\""
	" -D _BIND_TO_CURRENT_VCLIBS_VERSION=1"
	"\n"
	"${MAKE_COMMAND}\n"
)