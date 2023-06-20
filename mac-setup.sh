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
		brew install openjdk@11 
		echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
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
	which -s markdown-toc
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

installPgadmin() {
	if [ -d "/Applications/pgAdmin 4.app" ]; then
		echo "pgadmin4 already installed"
	else
		echo "Installing pgadmin4"
		brew install --cask pgadmin4
	fi
}

installLiquibase() {
	which -s liquibase
	if [[ $? != 0 ]] ; then
		echo "Installing liquibase"
		brew install liquibase
	else
		echo "liquibase already installed"
	fi
}

installPsql() {
	which -s psql
	if [[ $? != 0 ]] ; then
		echo "Installing psql"
		brew install postgresql
	else
		echo "psql already installed"
	fi
}

installGoogleChrome() {
	if [ -d "/Applications/Google Chrome.app" ]; then
		echo "Google Chrome already installed"
	else
		echo "Installing Google Chrome"
		brew install google-chrome
	fi
}

installGoogleDrive() {
	if [ -d "/Applications/Google Drive.app" ]; then
		echo "Google Drive already installed"
	else
		echo "Installing Google Drive"
		brew install google-drive
	fi
}

installPostman() {
	if [ -d "/Applications/Postman.app" ]; then
		echo "Postman already installed"
	else
		echo "InstallingPostman"
		brew install --cask postman
	fi
}

installDropbox() {
	if [ -d "/Applications/Dropbox.app" ]; then
		echo "Dropbox already installed"
	else
		echo "Installing Dropbox"
		brew install --cask dropbox
	fi
}

installZoom() {
	if [ -d "/Applications/zoom.us.app" ]; then
		echo "Zoom already installed"
	else
		echo "Installing Zoom"
		brew install --cask zoom
	fi
}

installCamtasia() {
	if [ -d "/Applications/Camtasia 2022.app" ]; then
		echo "camtasia already installed"
	else 
		echo "Installing camtasia"
		brew install --cask camtasia
	fi
}

installTomcat() {
	if [ -d "/opt/homebrew/opt/tomcat" ]; then
		
		echo "tomcat already installed"
	else
		echo "Installing tomcat"
		brew install tomcat
	fi
}

installMinikube() {
	which -s minikube
	if [[ $? != 0 ]] ; then
		echo "Installing kompose"
		brew install minikube
	else
		echo "minikube already installed"
	fi
}

installKompose() {
	which -s kompose
	if [[ $? != 0 ]] ; then
		echo "Installing kompose"
		brew install kompose
	else
		echo "kompose already installed"
	fi
}

installHelm() {
	which -s helm
	if [[ $? != 0 ]] ; then
		echo "Installing helm"
		brew install helm
	else
		echo "helm already installed"
	fi
}

installRedisResktop() {
	if [ -d "/Applications/Another Redis Desktop Manager.app" ]; then
		echo "redis desktop already installed"
	else 
		echo "Installing redis desktop "
		brew install --cask another-redis-desktop-manager
		sudo xattr -rd com.apple.quarantine /Applications/Another\ Redis\ Desktop\ Manager.app
	fi
}

installRedis() {
	which -s redis-cli
	if [[ $? != 0 ]] ; then
		echo "Installing redis"
		brew install redis
	else
		echo "redis already installed"
	fi
}

installDbVis() {
	if [ -d "/Applications/DbVisualizer.app" ]; then
		echo "dbvis desktop already installed"
	else 
		echo "Installing dbvis"
		brew install --cask dbvisualizer
	fi
}

# Could not get this to work
# use https://kafkaide.com/download/
installKafkaIde() {
	if [ -d "/Applications/Kafka IDE.app" ]; then
		echo "Kafka IDE desktop already installed"
	else 
		echo "Installing Kafka IDE"
		brew install p7zip
		rm -rf build || true
		mkdir build || true
		curl https://kafkaide-download.s3-eu-west-1.amazonaws.com/ide/2021.10.2/Kafka_IDE-2021.10.2.dmg -o build/kafkaide.dmg
		7z x -obuild/kafka build/kafkaide.dmg
		cp -rf build/kafka/Kafka\ IDE\ 2021.10.2/Kafka\ IDE.app /Applications/Kafka\ IDE.app
		sudo xattr -rd com.apple.quarantine /Applications/Kafka\ IDE.app
	fi
}

installKafka() {
	which -s kafka-topics
	if [[ $? != 0 ]] ; then
		echo "Installing kafka"
		brew install kafka
	else
		echo "kafka already installed"
	fi
}

installCassandra() {
	which -s cqlsh
	if [[ $? != 0 ]] ; then
		echo "Installing cql"
		brew install cassandra
	else
		echo "cql already installed"
	fi
}

installTeams() {
	if [ -d "/Applications/Microsoft Teams.app" ]; then
		echo "teams desktop already installed"
	else 
		echo "Installing teams"
		brew install --cask microsoft-teams
	fi
}

installAws() {
	which -s aws
	if [[ $? != 0 ]] ; then
		echo "Installing aws"
		brew install awscli
	else
		echo "aws already installed"
	fi
}

installTerraform() {
	which -s terraform
	if [[ $? != 0 ]] ; then
		echo "Installing terraform"
		brew install terraform
	else
		echo "terraform already installed"
	fi
}

installKrew() {
	# this does not work
	which -s krew
	if [[ $? != 0 ]] ; then
		echo "Installing krew"
		brew install krew
	else
		echo "krew already installed"
	fi
}

# This didn't work out-of-the-box
installKubernetic() {
	if [ -d "/Applications/Kubernetic.app" ]; then
		echo "kubernetic already installed"
	else 
		echo "Installing kubernetic"
		brew install --cask kubernetic
	fi
}

installAptakube() {
	if [ -d "/Applications/Aptakube.app" ]; then
		echo "aptakube already installed"
	else 
		echo "Installing aptakube"
		brew install --cask aptakube
	fi
}

installKcat() {
	which -s kcat
	if [[ $? != 0 ]] ; then
		echo "Installing kcat"
		brew install kcat
	else
		echo "kcat already installed"
	fi
}

installYarn() {
	which -s yarn
	if [[ $? != 0 ]] ; then
		echo "Installing yarn"
		brew install yarn
	else
		echo "yarn already installed"
	fi
}

installPkgConfig() {
	which -s pkg-config
	if [[ $? != 0 ]] ; then
		echo "Installing pkg-config"
		brew install pkg-config cairo pango libpng jpeg giflib librsvg
	else
		echo "pkg-config already installed"
	fi
}

installOneDrive() {
	if [ -d "/Applications/OneDrive.app" ]; then
		echo "OneDrive already installed"
	else 
		echo "Installing aptakuOneDrivebe"
		brew install --cask onedrive
	fi
}

installSwagger2markup() {
	which -s swagger2markup
	if [[ $? != 0 ]] ; then
		echo "Installing swagger2markup"
		brew install swagger2markup-cli
	else
		echo "swagger2markup already installed"
	fi
}

installWiddershins() {
	which -s widdershins
	if [[ $? != 0 ]] ; then
		echo "Installing widdershins"
		npm install -g widdershins
	else
		echo "widdershins already installed"
	fi
}

installYq() {
	which -s yq
	if [[ $? != 0 ]] ; then
		echo "Installing yq"
		brew install yq
	else
		echo "yq already installed"
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
installPgadmin
installLiquibase
installPsql
installGoogleChrome
installGoogleDrive
installPostman
installDropbox
installZoom
installCamtasia
installTomcat
installMinikube
installKompose
installHelm
installRedisResktop
installRedis
installDbVis
installKafka
installCassandra
installTeams
installAws
installTerraform
# installKrew
# installKubernetic
installAptakube
installKcat
installYarn
installPkgConfig
installOneDrive
installSwagger2markup
installWiddershins
installYq
