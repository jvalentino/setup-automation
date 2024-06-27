

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
	if (Test-Path "C:\TBD") {
		Write-Output "STS already installed"
	} else {
		Write-Output "STS to be installed"
		choco install springtoolsuite -y
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


