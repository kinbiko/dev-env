# dev-env
Generic development environment on debian.
__Pre-requisites__: Git

## Outline

### install-prerequisites.sh
This is the first shell script that should be run on a brand new debian installation.
It:
- Updates the repository and upgrades the current system.
- Bash: ensures the version is heartbleed safe
- Installs a RDP/VNC server.
- Creates a new user with a provided username, and establishes authentication against LDAP

##install-common.sh
Installs:
    Docker
    Chrome
Removes:
    IceWeasel
    Thunderbird
    
##install-java.sh
Installs:
- Java 8, and not the openJDK one.
- Build tool, prompt for
    - Maven
    - Gradle
- IDE, prompt for
    - IntelliJ IDEA
    - Eclipse
    - None/instal manually

##install-extras.sh
- Text editor, prompt for
    - Notepad++
    - Atom
    - Vim 8
tmux
htop
zsh - and enable by default
ctags
zeal
node
python3

