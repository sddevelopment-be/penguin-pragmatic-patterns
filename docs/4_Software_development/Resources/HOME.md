# Resources

Similar to bash aliases, you can set up shorthand codes for commonly used git commands.
Below is an example `.gitconfig ` alias section. Be sure to add this to your existing git config, rather than replacing it entirely.

## .gitconfig

```bash
[aliases]
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

# HTML Codes

Quick reference for various html codes, useful for writing documentation in markdown, asciidoc, and plain html.
THese glyphs will render according to the clients (browser) encoding preferences.

```
HTML Entity     GLYPH  NAME
&#8984;         ⌘      Command, Cmd, Clover, (formerly) Apple
&#8963;         ⌃      Control, Ctl, Ctrl
&#8997;         ⌥      Option, Opt, (Windows) Alt
&#8679;         ⇧      Shift
&#8682;         ⇪      Caps lock
&#9167;         ⏏      Eject
&#8617;         ↩      Return, Carriage Return
&#8629; &crarr; ↵      Return, Carriage Return
&#9166;         ⏎      Return, Carriage Return
&#8996;         ⌤      Enter
&#9003;         ⌫      Delete, Backspace
&#8998;         ⌦      Forward Delete
&#9099;         ⎋      Escape, Esc
&#8594; &rarr;  →      Right arrow
&#8592; &larr;  ←      Left arrow
&#8593; &uarr;  ↑      Up arrow
&#8595; &darr;  ↓      Down arrow
&#8670;         ⇞      Page Up, PgUp
&#8671;         ⇟      Page Down, PgDn
&#8598;         ↖      Home
&#8600;         ↘      End
&#8999;         ⌧      Clear
&#8677;         ⇥      Tab, Tab Right, Horizontal Tab
&#8676;         ⇤      Shift Tab, Tab Left, Back-tab
&#9250;         ␢      Space, Blank
&#9251;         ␣      Space, Blank
```

# Resources

A set of useful script extracts for quick reference.


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