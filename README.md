# Setup Automation

At any place I go, I am always having to install the same software over and over again.

This is my "catch all" project for containing a script for installing everything I could possibly need.

It also works as a good thing to copy an paste from if you are trying to automate some specific development enviroment. Copy it, paste it, remote the stuff you don't need, add the stuff you do.

## Mac

It utilized homebrew as the basis for tool installation, and is run using the following:

```bash
chmod 764 mac-setup.sh
./mac-setup.sh
```

If will only install the tools that have not already been installed, so you can run this over and over again if needed.

## Windows

There is currently no windows automated setup, so if you want to use windows and this doesn't exist, it is your responsibility to automate it and put the resulting script here.


**TODO!**

# Tooling

## Homebrew

> Homebrew is a free and open-source software package management system that simplifies the installation of software on Apple's operating system, macOS, as well as Linux. The name is intended to suggest the idea of building software on the Mac depending on the user's taste. 

- https://en.wikipedia.org/wiki/Homebrew_(package_manager)

This is used as the underlying instalation automation for mac/inux.

## Visual Code Studio

> Visual Studio Code, also commonly referred to as VS Code, is a source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git

- https://en.wikipedia.org/wiki/Visual_Studio_Code

This is used for the dev environmnet for both Salesforce and general NodeJS.

## Git

> Git is free and open source software for distributed version control: tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development

- https://en.wikipedia.org/wiki/Git

This is the SCM you should be using, and if you are not, you are wrong.

## Github Desktop

> Whether you're new to Git or a seasoned user, *GitHub Desktop* simplifies your development workflow.

- https://desktop.github.com/

This is what I use if the command-line for Git ends up being too confusing for something. Ths is just a nice UI on top of Git.

## NodeJS

> Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on a JavaScript Engine and executes JavaScript code outside a web browser, which was designed to build scalable network applications

- https://en.wikipedia.org/wiki/Node.js

This is the underlying runtime environment for Salesforce and JavaScript dev, specifically the commands of npm, npx, and node.

## SFDX

> Salesforce Developer Experience ('SFDX' or just 'DX') is a set of tools designed **to improve the traditional developer's experience of building on the platform**.

- https://www.salesforceben.com/what-is-salesforce-dx-the-definitive-guide/

This is the underlying NodeJS based framework for interacting with Salesforce at the command-line level. It is around 200 individual commands.

## Java

> OpenJDK is a free and open-source implementation of the Java Platform, Standard Edition. It is the result of an effort Sun Microsystems began in 2006. The implementation is licensed under the GPL-2.0-only with a linking exception. 

- https://en.wikipedia.org/wiki/OpenJDK

This is the undelrying development and runtime environment for Java, which is obviously used for Java development.

## Docker Desktop

> *Docker Desktop* is an application for MacOS and Windows machines for the building and sharing of containerized applications and microservices. *Docker Desktop* ...

- https://www.docker.com/products/docker-desktop/

This both contains the docker command-line and a nice interface to it. This is used for working with containers, generally related to deployment environments.

## Draw.io

> diagrams.net (formerly *draw*.*io*) is free online diagram software. You can use it as a flowchart maker, network diagram software, to create UML online, ...

- https://www.draw.io/

This is a good diagramming tool, however I have stopped using this in place of a cloud tool known as Miro. Specifically I keep all diagrams at https://miro.com/app/board/uXjVOo00mIc=/

## Eclipse Spring Tool Suite

> Spring Tool Suite is **an IDE to develop Spring applications**. It is an Eclipse-based development environment. It provides a ready-to-use environment to implement, run, deploy, and debug the application. It validates our application and provides quick fixes for the applications.

- https://www.javatpoint.com/spring-boot-download-and-install-sts-ide

This is the IDE used for Java development.

## Typora

> Typora is **a simple and configurable document editor that provides excellent Markdown support**. This application is ideal for students and professionals who need to write essays and reports. It might be difficult using Typora for multi-file projects or for website publishing.

- https://www.markdownguide.org/tools/typora/

This is used for editing markdown files, you know, all those README.md files like this one.

## Snagit

> Snagit is screen capture and screen recording software for Windows and macOS. It is created and developed by TechSmith and was first launched in 1990. Snagit is available in English, French, German, Japanese, Portuguese and Spanish versions

- https://en.wikipedia.org/wiki/Snagit

This is used mostly to capture screen shots using a simple hot key.

## Gulp

> gulp is an open-source JavaScript toolkit created by Eric Schoffstall used as a streaming build system in front-end web development. 

- https://en.wikipedia.org/wiki/Gulp.js

This is the undelrying build tool used for NodeJS, which wraps NPM. The reasoning is that it allows you to write build code in JavaScript, and as libraries.

## Markdown Table of Contents

This is a tool for generating a table of contents for a markdown document.

https://github.com/jonschlinkert/markdown-toc

## Create React App

A command-line tool for generating a ReactJS app.

https://create-react-app.dev/

## Heroku

> Heroku is a cloud platform as a service supporting several programming languages. One of the first cloud platforms, Heroku has been in development since June 2007, when it supported only the Ruby programming language, but now supports Java, Node.js, Scala, Clojure, Python, PHP, and Go.

- https://en.wikipedia.org/wiki/Heroku

This is the underlying command-line tooling for interacting with Heroku.

## Opera

> Opera is a multi-platform web browser developed by its namesake company Opera. The browser is based on Chromium, but distinguishes itself from other Chromium-based browsers through its user interface and other features

- https://en.wikipedia.org/wiki/Opera_(web_browser)

I only used this to have a second browser to use for Client accounts, as opposed to using Chrome for Slalom accounts.

## Slack

> Slack is a messaging program designed specifically for the office, but has also been adopted for personal use

- https://en.wikipedia.org/wiki/Slack_(software)

The application for the Slack messaging platform.

## Gradle

> Gradle is a build automation tool for multi-language software development. It controls the development process in the tasks of compilation and packaging to testing, deployment, and publishing. Supported languages include Java, C/C++, and JavaScript.

- https://en.wikipedia.org/wiki/Gradle

## Maven

> Maven is a build automation tool used primarily for Java projects. Maven can also be used to build and manage projects written in C#, Ruby, Scala, and other languages. The Maven project is hosted by the Apache Software Foundation, where it was formerly part of the Jakarta Project.

- https://en.wikipedia.org/wiki/Apache_Maven

