################################################################################
#
# test-definitions
#
################################################################################

LAVA_TEST_SHELL_VERSION = 15.07
LAVA_TEST_SHELL_SOURCE = lava-dispatcher-20$(LAVA_TEST_SHELL_VERSION).tar.gz
LAVA_TEST_SHELL_SITE = http://releases.linaro.org/components/lava/${LAVA_TEST_SHELL_VERSION}
LAVA_TEST_SHELL_INSTALL_STAGING = YES
LAVA_TEST_SHELL_LICENSE = GPLv2+
LAVA_TEST_SHELL_LICENSE_FILES = COPYING

define LAVA_TEST_SHELL_BUILD_CMDS
endef

define LAVA_TEST_SHELL_INSTALL_STAGING_CMDS
	cp -r $(@D)/lava_dispatcher/lava_test_shell/lava-* $(STAGING_DIR)/bin/
	chmod +x ${STAGING_DIR}/bin/lava-*
endef

define LAVA_TEST_SHELL_INSTALL_TARGET_CMDS
	cp -r $(@D)/lava_dispatcher/lava_test_shell/lava-* $(TARGET_DIR)/bin/
	chmod +x ${TARGET_DIR}/bin/lava-*
endef

$(eval $(generic-package))
