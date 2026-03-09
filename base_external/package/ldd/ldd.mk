
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#LDD_VERSION = '#COMMIT VERSION NUMBER'

LDD_VERSION = 'eac12e98859383c7647b9fc2a5687010897b9606'
#LDD_VERSION = HEAD

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:LeszTom/assignments-7-LeszTom.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/scull/*.ko $(TARGET_DIR)/bin
#	$(INSTALL) -m 0755 $(@D)/misc-modules/*.ko $(TARGET_DIR)/bin
#endef

$(eval $(kernel-module))
$(eval $(generic-package))
