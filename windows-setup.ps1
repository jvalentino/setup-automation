

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

Install-Chocolatey
Install-Git
Install-Git-Desktop

