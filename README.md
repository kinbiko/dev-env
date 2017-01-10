# dev-env
Generic development environment on debian.

__Pre-requisites__: git, bash and curl
##Installation To install:
Read and understand the script in the link below before pasting into a shell:

`curl https://raw.githubusercontent.com/kinbiko/dev-env/master/prerequisites.sh | bash`

## High-level scripts

### prerequisites.sh
This is the first shell script that should be run on a brand new debian installation.
It:
- Updates the repository and upgrades the current system.
- Bash: ensures the version is shellshock safe
- Installs a RDP/VNC server.
- Creates a new user with a provided username, and establishes authentication against LDAP

Before you can run this script, please read through the script and make any configurations necessary,
especially with regards to LDAP configuration.

##install-common.sh
Installs:
- Docker
- Chrome

##install-java.sh
Installs:
- Java 8, and not the openJDK one.
- Build tool, prompt for
    - Maven
    - Gradle
- IDE, prompt for
    - IntelliJ IDEA
    - Eclipse
    - None/install manually

##install-extras.sh
- Text editor, prompt for
    - Notepad++
    - Atom
    - Vim 8
- tmux
- htop
- zsh - and enable by default
- ctags
- zeal
- node
- python3

## Low-level scripts
- `configure-user-system.sh` configures your system with some convenient user-specific settings.
- `install-chrome.sh` installs the Google Chrome browser
- `install-docker.sh` installs the Docker Engine and the Docker Daemon.
- `install-java-8.sh` installs the Oracle Java 8 (not OpenJDK). This scripts requires interaction to accept the licence agreement.
- `install-maven-3.3.9` installs the latest version of Maven at the time of writing. The apt repositories do contain a version of maven, but it's outdated.
- `shellshock-check.sh` tests if your system is vulnerable to shellshock, and if so, prints VULNERABLE.
  This is used as an indicator to determine if a base system is mature enough to be considered as a dev environment during the prerequisites.sh script execution.
