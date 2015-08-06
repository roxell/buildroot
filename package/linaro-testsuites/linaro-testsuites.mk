################################################################################
#
# linaro-testsuites
#
################################################################################

LINARO_TESTSUITES_VERSION = 15.09
LINARO_TESTSUITES_SOURCE = linaro-testsuites-20$(LINARO_TESTSUITES_VERSION).tar.bz2
LINARO_TESTSUITES_SITE = http://releases.linaro.org/components/platform/linaro-test-suites/$(LINARO_TESTSUITES_VERSION)
LINARO_TESTSUITES_INSTALL_STAGING = YES
#LINARO_TESTSUITES_LICENSE = GPLv2+
#LINARO_TESTSUITES_LICENSE_FILES = LICENSE.txt

LINARO_TESTSUITES_DEPENDENCIES = \
	bash \
	coreutils \
	keyutils \
	lava-test-shell \
	libffi \
	python \
	python-numpy

define LINARO_TESTSUITES_BUILD_CMDS
endef

define LINARO_TESTSUITES_INSTALL_STAGING_CMDS
	cp -r $(@D) $(STAGING_DIR)/usr/share/linaro-testsuites/
endef

define LINARO_TESTSUITES_INSTALL_TARGET_CMDS
	cp -r $(@D) $(TARGET_DIR)/usr/share/linaro-testsuites/
endef

$(eval $(generic-package))
