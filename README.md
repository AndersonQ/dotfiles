# dotfiles

My dotfiles :)

I'm using a local [git bare repo](https://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/) located at `$HOME/.dotfiles.git` as described [here](https://www.atlassian.com/git/tutorials/dotfiles)

## TL;DR

```shell
cd $HOME
git clone --bare git@github.com:AndersonQ/dotfiles.git .dotfiles.git
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
dotgit config --local status.showUntrackedFiles no # do not track all the files ;)
dotgit checkout
```

- `dotgit checkout` failed

It fails if there is already any of the files beig tracked. Then, move them and retry. In the article, they suggest (I haven´t tried it though):

```shell
mkdir -p .config-backup && \
dotgit checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
