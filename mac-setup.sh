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

visualcodestudio() {
	if [ -d "/Applications/Visual Studio Code.app" ]; then
		echo "Visual Studio Code already installed"
	else 
		echo "Installing Visual Studio Code"
		brew install --cask visual-studio-code
	fi
}

installGit() {
	which -s git
	if [[ $? != 0 ]] ; then
		echo "Installing Git"
		brew install git
	else
		echo "git already installed"
	fi

	# ssh-keygen -t rsa -b 4096 -C "jvalentino2@gmail.com"
	# pbcopy < ~/.ssh/id_rsa.pub
	# create new SSH key using this
}

githubDesktop() {
	if [ -d "/Applications/GitHub Desktop.app" ]; then
		echo "GitHub Desktop already installed"
	else 
		echo "Installing GitHub Desktop"
		brew install --cask github
	fi

}

installNode() {
	# 
	which -s git
	if [[ $? != 0 ]] ; then
		echo "Installing NPM"
		brew install node
	else
		echo "NPM already installed"
	fi

}

installSfdx() {
	which -s sfdx
	if [[ $? != 0 ]] ; then
		echo "Installing SFDX"
		npm install sfdx-cli --global
	else
		echo "SFDX already installed"
	fi

	which -s sf
	if [[ $? != 0 ]] ; then
		echo "Installing SF"
		npm install @salesforce/cli --global
	else
		echo "SF already installed"
	fi
}

installJava() {
	message=$(java -version 2>&1 >/dev/null)

	if [[ $message =~ "Homebrew" ]]; then
		echo "OpenJDK already installed"
	else
		echo "Installing OpenJDK"
		brew install openjdk 
		echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
		source ~/.zshrc
	fi

}

installDocker() {
	which -s docker
	if [[ $? != 0 ]] ; then
		echo "Installing Docker"
		brew install docker
	else
		echo "Docker already installed"
	fi

}

installDockerDesktop() {
	if [ -d "/Applications/Docker.app" ]; then
		echo "Docker Desktop already installed"
	else 
		echo "Installing Docker Desktop"
		brew install --cask docker
		source ~/.zshrc
	fi
}

installDrawIo() {
	if [ -d "/Applications/draw.io.app" ]; then
		echo "Draw.io Desktop already installed"
	else 
		echo "Installing Draw.io"
		brew install --cask drawio
	fi
}

installSTS() {
	if [ -d "/Applications/SpringToolSuite4.app" ]; then
		echo "STS already installed"
	else 
		echo "Installing Spring Tool Suite"
		brew install --cask springtoolsuite
	fi
}

installTypora() {
	if [ -d "/Applications/Typora.app" ]; then
		echo "Typora already installed"
	else 
		echo "Installing Typora"
		brew install --cask typora
	fi
}


homebrew
visualcodestudio
installGit
githubDesktop
installNode
installSfdx
installJava
# installDocker
installDockerDesktop
installDrawIo
installSTS
installTypora
