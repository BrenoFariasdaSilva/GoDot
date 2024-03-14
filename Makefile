# Makefile to install Godot 4 from GitHub Releases, targeting specific OS naming conventions
OS := $(shell uname -s)

.PHONY: install

install:
ifeq ($(OS),Darwin)
	@echo "Installing Godot 4 on macOS using Homebrew..."
	brew install godot
else ifeq ($(OS),Linux)
	@echo "Fetching latest Godot 4 stable release for Linux..."
	$(eval GODOT_LINUX_URL := $(shell curl -s https://api.github.com/repos/godotengine/godot/releases/latest | jq -r '.assets[] | select(.name | test("Linux.64")) | .browser_download_url'))
	@echo "Downloading Godot from $(GODOT_LINUX_URL)..."
	@curl -L $(GODOT_LINUX_URL) -o godot_linux.zip
	@unzip godot_linux.zip -d /usr/local/bin/
	@chmod +x /usr/local/bin/Godot*
	@rm godot_linux.zip
	@echo "Godot 4 has been installed. Run it from /usr/local/bin."
else
	@echo "To install Godot 4 on Windows, follow these steps:"
	@echo "1. Visit the GitHub Releases page for Godot Engine: https://github.com/godotengine/godot/releases/latest"
	@echo "2. Download the latest version for Windows (look for a file named similar to 'Godot_vx.x.x-stable_win64.exe.zip')."
	@echo "3. Unzip the downloaded file and run the installer."
endif
