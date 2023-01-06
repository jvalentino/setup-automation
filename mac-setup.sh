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
	which -s node
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
		brew install openjdk@17 
		echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
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

installSnagit() {
	if [ -d "/Applications/TechSmith Capture.app" ]; then
		echo "Snagit already installed"
	else 
		echo "Installing Snagit"
		brew install --cask techsmith-capture
	fi
}

installGulp() {
	which -s gulp
	if [[ $? != 0 ]] ; then
		echo "Installing gulp"
		npm install --global gulp
	else
		echo "gulp already installed"
	fi

}

installHot() {
	if [ -d "/Applications/Hot.app" ]; then
		echo "Hot already installed"
	else 
		echo "Installing Hot"
		# broken
		# brew install --force --cask hot
		mkdir build || true
		curl -L -O https://github.com/macmade/Hot/releases/download/1.6.1/Hot.app.zip -o Hot.app.zip
		mv Hot.app.zip build
		unzip build/Hot.app.zip -d build
		cp -rf build/Hot.app /Applications
	fi
}

installMarkdownToc() {
	which -s gulp
	if [[ $? != 0 ]] ; then
		echo "Installing markdown-toc"
		npm install --global markdown-toc
	else
		echo "markdown-toc already installed"
	fi
}

installCreateReactApp() {
	which -s create-react-app
	if [[ $? != 0 ]] ; then
		echo "Installing create-react-app"
		npm install --global create-react-app
	else
		echo "create-react-app already installed"
	fi
}

installHeroku() {
	which -s heroku
	if [[ $? != 0 ]] ; then
		echo "Installing heroku"
		npm install heroku --global
	else
		echo "heroku already installed"
	fi
}

installOpera() {
	if [ -d "/Applications/Opera.app" ]; then
		echo "opera already installed"
	else
		echo "Installing opera"
		brew install --cask opera
	fi
}

installSlack() {
	if [ -d "/Applications/Slack.app" ]; then
		echo "slack already installed"
	else
		echo "Installing slack"
		brew install --cask slack
	fi
}

installGradle() {
	which -s gradle
	if [[ $? != 0 ]] ; then
		echo "Installing gradle"
		brew install gradle
	else
		echo "gradle already installed"
	fi
}

installMaven() {
	which -s mvn
	if [[ $? != 0 ]] ; then
		echo "Installing Maven"
		brew install mvn
	else
		echo "mvn already installed"
	fi
}

installIntelliJCE() {
	if [ -d "/Applications/IntelliJ IDEA CE.app" ]; then
		echo "IntelliJ already installed"
	else
		echo "Installing IntelliJ CE"
		brew install --cask intellij-idea-ce
	fi
}

installDockerCompose() {
	which -s docker-compose
	if [[ $? != 0 ]] ; then
		echo "Installing docker-compose"
		brew install docker-compose
	else
		echo "docker-compose already installed"
	fi
}

# https://python.land/installing-python
installPython() {
	which -s python
	if [[ $? != 0 ]] ; then
		echo "Installing python"
		brew install python
		echo 'export PATH="/opt/homebrew/opt/python@3.10/libexec/bin:$PATH"' >> ~/.zshrc
		source ~/.zshrc
	else
		echo "python already installed"
	fi
}

# https://pybuilder.io/
installPYB() {
	which -s pyb
	if [[ $? != 0 ]] ; then
		echo "Installing pyb"
		pip install pybuilder
	else
		echo "pyb already installed"
	fi
}

installVirtualenv() {
	which -s virtualenv
	if [[ $? != 0 ]] ; then
		echo "Installing virtualenv"
		pip install virtualenv
	else
		echo "virtualenv already installed"
	fi
}


homebrew
visualcodestudio
installGit
githubDesktop
installNode
installSfdx
installJava
installDockerDesktop
installDrawIo
installSTS
installTypora
installSnagit
installGulp
installHot
installMarkdownToc
installCreateReactApp
installHeroku
installOpera
installSlack
installGradle
installMaven
installIntelliJCE
installDockerCompose
installPython
installPYB
installVirtualenv