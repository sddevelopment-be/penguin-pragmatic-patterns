
The command line interface, or CLI for short, is a powerful utility.
Unfortunately, all this power can be quite overwhelming when you first become acquainted with it.
Quite a few computer enthusiasts will remember the first time they accidentally found themselves in a
`vi`-shell and having no idea how to get out of it.

Although intimidating, once you become familiar with using the command line, you might notice how it allows you to work much faster then using a GUI.
The sections below contain some tips, tricks and configurations to level up your terminal.

> UNLIMITED POWER!
>
> ~ Emperor Palpatine

## *NIX terminal tips

As developers, we are used to typing. Our brain is usually the limiting factor in using cli commands efficiently.
Long commands, with multiple options are especially annoying.
Luckily, most \*NIX based systems have a good bash-like terminal out of the box.
Let's take a look at making it work even better.

### Bash aliases for developers

from [gist bash_aliases](https://gist.github.com/stijn-dejongh/b55e91a775b6b6e95fbbc5d529132a87)

#### .bashrc

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

#### .gitconfig

```bash
# General git usage
squash = "!f(){ git reset --soft HEAD~${1} && git commit --edit -m\"$(git log --format=%B --reverse HEAD..HEAD@{1})\"; };f"
lg = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
c = "!git add -A && git commit -m "
wip = "!git add -A && git commit -m 'WIP commit - quick save'"
amno = "!git add -A && git commit --amend --no-edit"
amend = "!git add -A && git commit --amend"
work = !git lg --author \"Stijn\" --before today --after \"two days ago\" --no-merges
info = !git st && echo && git lo && echo && git remote -v

# Handling files that are to be assumed unchanged.
ignore = update-index --assume-unchanged
uningore = update-index --no-assume-unchanged
ignored = !git ls-files -v | grep '^[a-z]'

# Branches
p = "!git push origin $(git rev-parse --abbrev-ref HEAD)"
rr = "!git fetch --all && git rebase origin/master"
n = "!git checkout -b"
co = "!git checkout"
st = "!git status"
rv = "!git checkout --"
cleanup = "!git reset --hard && git clean -f"

# Stashes
isl = "!git stash list"
sa = "!git stash apply"
ss = "!git stash save"

# Diffs
dt = difftool --no-prompt
mt = mergetool --no-prompt

# Tags
lstags = "!f(){ echo 'Describe: '; git describe; echo 'Latest 5 tags: '; git tag | sort -V | tail -5; }; f"
colt = "!f(){ local latest=`git tag | sort -V | tail -1`; git checkout $latest; }; f"

# Read aliases
alias = "config --get-regexp 'alias.*'"
```
