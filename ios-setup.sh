#!/bin/sh

homebrew () {
	which -s brew
	if [[ $? != 0 ]] ; then
		echo "brew not installed"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
		eval "$(/opt/homebrew/bin/brew shellenv)"
	else
		echo "brew already installed"
	fi
}

installMas() {
	which -s mas
	if [[ $? != 0 ]] ; then
		echo "Installing mas"
		brew install mas
	else
		echo "mas already installed"
	fi
}

installXcode() {
	which -s xcodebuild
	if [[ $? != 0 ]] ; then
		echo "Installing xcode"
		mas search xcode
		mas install 497799835
	else
		echo "xcode already installed"
	fi

	sudo xcode-select -s /Applications
	xcode-select --print-path 
	sudo xcodebuild -license
	xcrun simctl list runtimes --json
}

installIosSim() {
	which -s mas
	if [[ $? != 0 ]] ; then
		echo "Installing ios-sim"
		brew install ios-sim
	else
		echo "ios-sim already installed"
	fi
}

homebrew
installMas
installXcode
installIosSim
