cd source

export LC_ALL=en_US.UTF-8
export OE_MACHINE="dragonboard-410c"
export BUILD_NUMBER=IMM.LE.1.0-8x16_33400
export IMAGES="rpb-desktop-image"
QCOM_EULA=1 MACHINE=${OE_MACHINE} source ./setup-environment build
echo "IMAGE_NAME_append = \"-${BUILD_NUMBER}\"" >> conf/local.conf
echo "LICENSE_FLAGS_WHITELIST = \"commercial\"" >> conf/local.conf
echo "ACCEPT_EULA_dragonboard-410c = \"1\"" >> conf/local.conf
echo "MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += \" lk\"" >> conf/local.conf
echo "RDEPENDS_packagegroup-rpb_remove = \"docker\"" >> conf/local.conf
bitbake ${IMAGES}
