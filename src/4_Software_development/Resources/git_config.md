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