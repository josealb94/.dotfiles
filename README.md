# Dotfiles with a bare Git repository
## Bare Git repository setup
```sh
$ git init --bare $HOME/.dotfiles
$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ config config --local status.showUntrackedFiles no
$ echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```
## Show Status
```sh
config status
```
## Add files
```sh
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
## Install your dotfiles onto a new system
Confirm that the alias has been assigned to either `.bashrc` or `.zshrc`:
```sh
$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
The repository should ignore the folder where it will be cloned, this will avoid recursion problems:
```sh
$ echo ".dotfiles" >> .gitignore
```
Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:
```sh
$ git clone --bare <git-repo-url> $HOME/.dotfiles
```
Add the alias in the shell:
```sh
$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Review the repository content:
```sh
$ config checkout
```
Reviewing may generate the following error:
```sh
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```
The error occurs because there may be files that the repository will overwrite, we can do the following:
* Delete the files to replace
* Make a backup of those files

The following code allows to backup those files:
```sh
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
Re-run the check out if you had problems:
```sh
config checkout
```
Set the flag showUntrackedFiles to no on this specific (local) repository:
```sh
config config --local status.showUntrackedFiles no
```
Configure commands for adding and updating files:
```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
# Reference
* [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
* [Git Bare Repository - A Better Way To Manage Dotfiles (Youtube)](https://www.youtube.com/watch?v=tBoLDpTWVOM)
