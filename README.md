# dev-env
Generic development environment on debian.
Each script refers to one application. Most scripts can be easily up- or downgraded by opening the shell scripts and setting the `VERSION` variables.
Although this is not guaranteed as it depends on the vendors of each of these applications.
All default configurations of these scripts have been verified against a clean installation of Debian Jessie 3.16.0.

##Installation instructions: 
Assuming you are a user with sudo access:
Download this repository as a zip, or use `git clone` to download.
Ensure you run `./configure-user-system.sh` or a high level script before running any of the low level scripts.

## High-level scripts
Run the scripts by 'dot-slashing' in a bash shell in the top level directory of this repository.

##`install-common-environment.sh`
Installs:
- Docker
- Chrome
- Git

##`install-java-environment.sh`
Installs:
- Java 8, (Oracle, not OpenJDK)
- Maven
- Eclipse: (STS)

##`configure-user-system.sh` 
Configures your system with some convenient user-specific settings that allow for a smoother installation experience. :)

##extras/
These scripts are entirely optional. 
If you don't know what it is, you probably won't need it.
- [x] Atom: Free and Open Source text editor by the developers at Github
- [x] Vim 8: Command-line text editor, updated to the most recent version
- [x] tmux: Terminal multiplexer.
- [x] htop: System process monitor - a prettier and more user friendly version of top.
- [ ] zsh: A more developer-friendly alternative to bash. Installing this will set zsh as your default shell.
- [ ] ctags: 'Typing' for text editors and tools that support ctags.
- [ ] zeal: Local documentation store lookup tool, similar to Velocity on Windows and Dash on OSX/Mac OS.
- [ ] node: NodeJS and NPM.

## Low-level scripts
- `java/`
    - [x] `install-java-8.sh` installs the Oracle Java 8 (not OpenJDK). This scripts requires interaction to accept the licence agreement
    - [x] `install-maven.sh` installs the latest version of Maven at the time of writing. The apt repositories do contain a version of maven, but it's outdated.
    - [x] `install-sts.sh` installs the latest version of Spring Tool Suite at the time of writing.
- `common/`
    - [x] `install-chrome.sh` Installs the most recent version of Google Chrome as available on Linux(Ubuntu really, but should work on Debian too).
    - [x] `install-docker.sh` installs the Docker Engine and the Docker Daemon.
    - [x] `install-git.sh` Installs a more recent version of Git than what is available in the apt repositories at the time of writing.
