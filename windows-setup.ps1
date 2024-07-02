# You can create a shortcut with this target to automatically open an elevated prompt:
# %windir%\System32\cmd.exe /k cd "C:\Users\John.Valentino\workspace\code

# Command line tool for acting like a windows package manager
function Install-Chocolatey {
	if (Test-Path "C:\ProgramData\chocolatey\bin\choco.exe") {
		Write-Output "Chocolatey already installed"
	} else {
		Write-Output "Chocolatey to be installed"
		Set-ExecutionPolicy Bypass -Scope Process -Force; `
		[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
		iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	}
}

# Used for source control
function Install-Git {
	if (Test-Path "C:\Program Files\Git\bin\git.exe") {
		Write-Output "Git already installed"
	} else {
		Write-Output "Git to be installed"
		choco install git -y
	}
}

# Used for source control with the aid of a GUI
function Install-Git-Desktop {
	if (Test-Path "C:\Users\John.Valentino\AppData\Local\GitHubDesktop\GitHubDesktop.exe") {
		Write-Output "Git Desktop already installed"
	} else {
		Write-Output "Git Desktop to be installed"
		choco install github-desktop -y
	}		
	
}

# Messaging, noting though that this version requires an update, the update is an msix file, and you
# can't open an msix file without first opening the store and letting it update.
function Install-Teams {
	if (Test-Path "C:\Program Files (x86)\Microsoft\Teams\current\Teams.exe") {
		Write-Output "Teams already installed"
	} else {
		Write-Output "Teams to be installed"
		choco install microsoft-teams -y
	}	
}

# Messaging
function Install-Slack {
	if (Test-Path "C:\Program Files\Slack\slack.exe") {
		Write-Output "Slack already installed"
	} else {
		Write-Output "Slack to be installed"
		choco install slack -y
	}	
}

# NodeJS dev framework
function Install-Node {
	if (Test-Path "C:\Program Files\nodejs\node.exe") {
		Write-Output "Node already installed"
	} else {
		Write-Output "Node to be installed"
		choco install nodejs -y
	}	
}

function Install-OpenJDK17 {
	if (Test-Path "C:\Program Files\OpenJDK\jdk-17.0.2\bin\java.exe") {
		Write-Output "OpenJDK 17 already installed"
	} else {
		Write-Output "OpenJDK 17 to be installed"
		choco install openjdk --version=17.0.2 -y
	}	
}

function Install-DockerDesktop {
	if (Test-Path "C:\Program Files\Docker\Docker\Docker Desktop.exe") {
		Write-Output "Docker Desktop already installed"
	} else {
		Write-Output "Docker Desktop to be installed"
		choco install docker-desktop -y
	}	
}

function Install-SpringToolSuite {
	if (Test-Path "C:\ProgramData\chocolatey\lib\springtoolsuite\tools\sts-4.17.2.RELEASE\SpringToolSuite4.exe") {
		Write-Output "STS already installed"
	} else {
		Write-Output "STS to be installed"
		choco install springtoolsuite -y
	}	
}

function Install-Typora {
	if (Test-Path "C:\Program Files\Typora\Typora.exe") {
		Write-Output "Typora already installed"
	} else {
		Write-Output "Typora to be installed"
		choco install typora -y
	}	
}

function Install-Gulp {
	$command = "gulp"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		npm install --global gulp
	}
}

function Install-MarkdownToc {
	$command = "markdown-toc"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		npm install --global markdown-toc
	}
}

function Install-React {
	$command = "create-react-app"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		npm install --global create-react-app
	}
}

function Install-Gradle {
	if (Test-Path "C:\ProgramData\chocolatey\lib\gradle\gradle.nuspec") {
		Write-Output "Gradle already installed"
	} else {
		Write-Output "Gradle to be installed"
		choco install gradle -y
	}	
}

function Install-Maven {
	if (Test-Path "C:\ProgramData\chocolatey\lib\maven\maven.nupkg") {
		Write-Output "Maven already installed"
	} else {
		Write-Output "Maven to be installed"
		choco install maven -y
	}	
}

function Install-IntelliJ {
	if (Test-Path "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.1.4\bin\idea64.exe") {
		Write-Output "IntelliJ already installed"
	} else {
		Write-Output "IntelliJ to be installed"
		choco install intellijidea-community -y
	}	
}

function Install-Python {
	$command = "python"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install python -y
		$PROFILE
	}
}

function Install-PYB {
	$command = "pyb"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		pip install pybuilder
		$PROFILE
	}
}

function Install-virtualenv {
	$command = "virtualenv"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		pip install virtualenv
		$PROFILE
	}
}

function Install-pgadmin {
	if (Test-Path "C:\Program Files\PostgreSQL\16\pgAdmin 4\runtime\pgAdmin4.exe") {
		Write-Output "pgadmin already installed"
	} else {
		Write-Output "pgadmin to be installed"
		choco install pgadmin4 -y
	}	
}

function Install-liquibase {
	$command = "liquibase"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install liquibase -y
		$PROFILE
	}
}

function Install-psql {
	$command = "psql"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install postgresql -y
		$PROFILE
	}
}

function Install-postman {
	if (Test-Path "C:\Users\John.Valentino\AppData\Local\Postman\Postman.exe") {
		Write-Output "postman already installed"
	} else {
		Write-Output "postman to be installed"
		choco install postman -y
	}	
}

function Install-zoom {
	if (Test-Path "C:\Program Files\Zoom\bin\Zoom.exe") {
		Write-Output "zoom already installed"
	} else {
		Write-Output "zoom to be installed"
		choco install zoom -y
	}	
}

function Install-minikube {
	if (Test-Path "C:\ProgramData\chocolatey\lib\Minikube\Minikube.nupkg") {
		Write-Output "minikube already installed"
	} else {
		Write-Output "minikube to be installed"
		choco install minikube -y
	}	
}


function Install-helm {
	$command = "helm"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install kubernetes-helm -y
		$PROFILE
	}
}

function Install-RedisDesktop {
	if (Test-Path "C:\TBD") {
		Write-Output "RedisDesktop already installed"
	} else {
		Write-Output "RedisDesktop to be installed"
		choco install redis-desktop-manager -y
	}	
}

function Install-DbViz {
	if (Test-Path "C:\TBD") {
		Write-Output "DbViz already installed"
	} else {
		Write-Output "DbViz to be installed"
		choco install db-visualizer -y
	}	
}

function Install-AzureCli {
	$command = "az"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install azure-cli -y
		$PROFILE
	}
}

function Install-terraform {
	$command = "terraform"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install terraform -y
		$PROFILE
	}
}

function Install-yarn {
	$command = "yarn"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install yarn -y
		$PROFILE
	}
}

function Install-nvm {
	$command = "nvm"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install nvm -y
		$PROFILE
	}
}

function Install-pyenv {
	$command = "pyenv"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install pyenv-win -y
		$PROFILE
	}
}

function Install-vscode {
	if (Test-Path "C:\TBD") {
		Write-Output "vscode already installed"
	} else {
		Write-Output "vscode to be installed"
		choco install vscode -y
	}	
}

function Install-gzip {
	$command = "gzip"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install gzip -y
		$PROFILE
	}
}

function Install-tar {
	$command = "tar"

	if ($(where.exe $command) -ne $null) {
		Write-Output "$command is found"
	} else {
		Write-Output "$command is not found"
		choco install tartool -y
		$PROFILE
	}
}

function Install-Dropbox {
	if (Test-Path "C:\TBD") {
		Write-Output "Dropbox already installed"
	} else {
		Write-Output "Dropbox to be installed"
		choco install dropbox -y
	}	
}

function install-WSL {
	dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
	wsl --install -d Ubuntu
	wsl --set-default-version 2
	wsl --list --verbose
}

function Install-RancherDesktop {
	if (Test-Path "C:\TBD") {
		Write-Output "RancherDesktop already installed"
	} else {
		Write-Output "RancherDesktop to be installed"
		choco install rancher-desktop -y
	}	
}


Install-Chocolatey
Install-Git
Install-Git-Desktop
Install-Teams
Install-Slack
Install-Node
Install-OpenJDK17
Install-DockerDesktop
Install-SpringToolSuite
Install-Typora
Install-Gulp
Install-MarkdownToc
Install-React
Install-Gradle
Install-Maven
Install-IntelliJ
Install-Python
Install-PYB
Install-virtualenv
Install-pgadmin
Install-liquibase
Install-psql
Install-postman
Install-zoom
Install-minikube
Install-helm
# Install-RedisDesktop
Install-DbViz
Install-AzureCli
Install-terraform
Install-yarn
Install-nvm
Install-pyenv
Install-vscode
Install-gzip
Install-tar
Install-Dropbox
Install-RancherDesktop

