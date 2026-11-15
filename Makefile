#copyright (c) 2026, DevKotX

# Environment Variables
export KVSIDE_ROOT_PATH = $(CURDIR)

# Makefile Variables
SRC_BUILD_PATH  =
CLI_BUILD_PATH  =
CORE_BUILD_PATH =

ifeq ($(OS),Windows_NT) #Windows system
	SRC_BUILD_PATH  = cmd "$(CURDIR)\\Src\\build.bat"
	CLI_BUILD_PATH  = cmd "$(CURDIR)\\CLI\\build.bat"
	CORE_BUILD_PATH = cmd "$(CURDIR)\\Core\\build.bat"
else #UnixLike systems
	SRC_BUILD_PATH  = sh "$(CURDIR)/Src/build.sh"
	CLI_BUILD_PATH  = sh "$(CURDIR)/CLI/build.sh"
	CORE_BUILD_PATH = sh "$(CURDIR)/Core/build.sh"
endif

.ONESHELL:

# Makefile Targets
Help:
	@echo =========================================================
	@echo Build         : Build the KvSide project.
	@echo Clean         : Clean the build artifacts.
	@echo Install       : Install KvSide in the system.
	@echo Uninstall     : Uninstall KvSide from the system.
	@echo =========================================================
Build:
Clean:
Install: Build
Uninstall: Clean