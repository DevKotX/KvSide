#copyright (c) 2026 DevKotX

# Environment Variables

# Makefile Variables
SRC_BUILD_PATH    =
CLI_BUILD_PATH    =
CORE_BUILD_PATH   =

ifeq ($(OS),Windows_NT) #Windows systems

else

endif

# Makefile Targets
Help:
	@echo =========================================================
	@echo Build         : Build the KvSide project.
	@echo Clean         : Clean the build artifacts.
	@echo Install       : Install KvSide to the system.
	@echo Uninstall     : Uninstall KvSide from the system.
	@echo =========================================================
Build:
Clean:
Install: Build
Uninstall: Clean