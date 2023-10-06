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

homebrew

mkdir -p ~/workspaces || true
cd ~/workspaces

brew install openjdk@17
echo 'export JAVA_HOME="/opt/homebrew/opt/openjdk@17"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc

curl https://dl.google.com/android/repository/commandlinetools-mac-10406996_latest.zip -o android_sdk.zip
unzip android_sdk.zip -d android-sdk
mkdir ./android-sdk/cmdline-tools/latest
mv ./android-sdk/cmdline-tools/bin ./android-sdk/cmdline-tools/latest
mv ./android-sdk/cmdline-tools/lib ./android-sdk/cmdline-tools/latest
mv ./android-sdk/cmdline-tools/*.* ./android-sdk/cmdline-tools/latest
mkdir ./android-sdk/platform-tools
mkdir ./android-sdk/platforms   

export ANDROID_SDK_MANAGER=~/workspaces/android-sdk/cmdline-tools/latest/bin
export ANDROID_EMULATOR=~/workspaces/android-sdk/emulator

${ANDROID_SDK_MANAGER}/sdkmanager "system-images;android-33;google_apis;arm64-v8a"
${ANDROID_SDK_MANAGER}/avdmanager --verbose create avd --force --name "PIXEL" --package "system-images;android-33;google_apis;arm64-v8a" --tag "google_apis" --abi "arm64-v8a" --device "pixel_xl"
# ${ANDROID_EMULATOR}/emulator -avd PIXEL

echo 'export PATH="~/workspaces/android-sdk/cmdline-tools/latest/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="~/workspaces/android-sdk/emulator:$PATH"' >> ~/.zshrc

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jvalentino/setup-automation/main/android-setup.sh)"