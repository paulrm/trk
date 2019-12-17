# trk

track any file with git

```
track - verb 1. follow the trail or movements of (someone or something), typically in order 
to find them or note their course. "secondary radars that track the aircraft in flight"
synonyms: follow, trail, trace, pursue, shadow, stalk, dog, spoor, hunt (down), chase, 
hound, course, keep an eye on, keep in sight; informaltail, keep tabs on, keep a tab on
"he tracked a bear for 40 km"
```
Based in some previous practice like sysadmin, and the article [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
[see also] (https://news.ycombinator.com/item?id=11071754)
these convination of configuration/alias/scripting try to help you to track any file of your system with git.
Like a sysadmin, I use to keep track of system config and some details that I want to know on any server or workstation
I understand that these method can be a little dangeours, but, I think that is usefull to carefull people
or people that don't affair to re-install their SO if they broke something too badly.

```
git init --bare $HOME/.trk
alias trk='/usr/bin/git --git-dir=$HOME/.trk/ --work-tree=/'
alias trk-ls='trk ls-tree --full-tree -r HEAD'
trk config --local status.showUntrackedFiles no
echo "alias trk='/usr/bin/git --git-dir=$HOME/.trk/ --work-tree=/'" >> $HOME/.bashrc
echo "alias trk-ls='trk ls-tree --full-tree -r HEAD"                >> $HOME/.bashrc
```
