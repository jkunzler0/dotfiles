# Dotfile management reference:

https://www.atlassian.com/git/tutorials/dotfiles

https://news.ycombinator.com/item?id=11070797


## Setup

1. Initialize bare repo:
```bash
git init --bare $HOME/.cfg
```

2. Create alias:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

3. Hide untracked files:
```bash
config config --local status.showUntrackedFiles no
```

4. Add alias to shell config:
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

## Usage

Use `config` instead of `git`:

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config push
```

## Installation on a new system

1. Add alias to shell config
2. Ignore the repo folder:
```bash
echo ".cfg" >> .gitignore
```

3. Clone bare repo:
```bash
git clone --bare <git-repo-url> $HOME/.cfg
```

4. Define alias in current shell:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

5. Checkout content:
```bash
config checkout
```

6. Handle conflicts (by removing all conflicting files to a backup folder):
```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

7. Retry checkout:
```bash
config checkout
```

8. Set local config:
```bash
config config --local status.showUntrackedFiles no
```

Now use `config` commands to manage dotfiles.

