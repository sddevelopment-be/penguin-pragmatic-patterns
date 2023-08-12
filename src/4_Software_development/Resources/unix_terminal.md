# Unix Command line tips

The command line interface, or CLI for short, is a powerful utility.
Unfortunately, all this power can be quite overwhelming when you first become acquainted with it.
Quite a few computer enthusiasts will remember the first time they accidentally found themselves in a
`vi`-shell and having no idea how to get out of it.

Although intimidating, once you become familiar with using the command line, you might notice how it allows you to work much faster then using a GUI.
The sections below contain some tips, tricks and configurations to level up your terminal.

> [!QUOTE]  UNLIMITED POWER!
>
> ~ Emperor Palpatine

from [gist bash_aliases](https://gist.github.com/stijn-dejongh/b55e91a775b6b6e95fbbc5d529132a87)

## Using aliases

Most terminal environments (shells) are `bash`-based. They can be configured to your personal preferences by editing the shell's configuration 
script. This is a set of files containing commands which are executed every time you open a new terminal window.
You can use the `alias`-command to rename certain actions, allowing you to call them more quickly.

The advised way of making this happen is by creating a new `.bash_alias` file in your user home directory,
and editing the configuration file of your favorite shell (e.g. `.bashrc`).
Then add code to load the aliases file, in case it exists: 

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

## .bash_aliases

```bash
# TEXT aliases
alias v="vim"
alias nv="nvim"
alias em="emacs"

# GIT ALIASES

alias g=git
alias glog="git lg"
alias gsquash="git squash"

# PRODUCTIVITY ALIASES
alias inspire="fortune oblique"

# KEYBOARD ALIASES
alias workman="setxkbmap us; xmodmap ~/xmodmap/xmodmap.workman && xset r 66"
alias qwerty="setxkbmap us; xset -r 66"
alias colemak="setxkbmap us -variant colemak"

# MAVEN ALIASES

alias mci="mvn clean install"
alias mst="mci -Dmaven.test.skip=true"
alias mi="mvn install"
alias mrprep="mvn release:prepare"
alias mrperf="mvn release:perform"
alias mrrb="mvn release:rollback"
alias mdep="mvn dependency:tree"
alias mpom="mvn help:effective-pom"
alias msonar='mci -Psonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login="$SONAR_KEY"'

# DOCKER ALIASES
alias dockerps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}'"

# Bash aliases
alias breload="source ~/.bashrc"
```