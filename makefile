# Makefile for building the project
OUTPUT_CLI_DIR = Assets/Build/Bin/CLIs
OUTPUT_LIB_DIR = Assets/Build/Bin/Libs
OUTPUT_CORE_DIR = Assets/Build/Bin/Core

CLI_BUILD_FILE = ""
LIB_BUILD_FILE = ""
CORE_BUILD_FILE = ""

ifneq ($(OS),Widows_NT)
	CLI_BUILD_FILE = "CLI/build.bat"
	LIB_BUILD_FILE = "Src/build.bat"
	CORE_BUILD_FILE = "Core/build.bat"
else
	ifeq ($(shell uname -s),Darwin)
		CLI_BUILD_FILE = "CLI/build.zsh"
		LIB_BUILD_FILE = "Src/build.zsh"
		CORE_BUILD_FILE = "Core/build.zsh"
	else
		CLI_BUILD_FILE = "CLI/build.sh"
		LIB_BUILD_FILE = "Src/build.sh"
		CORE_BUILD_FILE = "Core/build.sh"
	endif
endif

build-cli:
	@echo "Starting CLI build..."
	@$(CLI_BUILD_FILE) $(OUTPUT_CLI_DIR)
	@echo "Build completed successfully!"
build-lib:
	@echo "Starting Lib build..."
	@$(LIB_BUILD_FILE) $(OUTPUT_LIB_DIR)
	@echo "Build completed successfully!"
build-core:
	@echo "Starting Core build..."
	@$(CORE_BUILD_FILE) $(OUTPUT_CORE_DIR)
	@echo "Build completed successfully!"
build: build-cli build-lib build-core
	@echo "Build all completed successfully!"