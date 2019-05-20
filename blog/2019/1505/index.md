# Mobile Blogging

## Github Pages

Setup [Github Pages](https://guides.github.com/features/pages/) to host your blog.

## Termux

* Install [Termux](https://termux.com/) on your Android device
* Install Git in Termux with `pkg install git`
* Clone your Github Pages project (in the default $HOME directory is fine, Termux now seems to have moved fully to [SAF](https://developer.android.com/guide/topics/providers/document-provider) and no extra steps are needed)

## Codex

Codex is a text editor designed to work alongside Termux so you don't have to struggle with Vi or Nano using a mobile keyboard. 

* Install Codex _(not released yet)_ 
* Select the file menu and choose open, in the native Android file chooser tap the burger menu and select Termux, the chooser opens at the home directory where you can select and edit your blog files.

[Note - Codex can't create files in Termux, for that just use `touch somefile.md` instead]

## Termux Widget

You can of course return to Termux to commit and push your updated blog, or you can do a little more setup and have convenient one-click publishing of your blog using [Termux Widget](https://wiki.termux.com/wiki/Termux:Widget)

* Create a shell script to pull the latest changes:
```
#!/bin/sh

cd $HOME/fiskurgit.github.io
git pull origin master
```

* and another to push:
```
#!/bin/sh

timestamp() {
  date +"%T"
}

cd $HOME/fiskurgit.github.io
git add --all
git commit -m "update at $(timestamp)"
git push origin master
```
