# dotfiles

These are my personal dotfiles if you guys want to achieve the same look as mine.

## Preview 

![Screenshot](https://github.com/KosenJPG/.dotfiles/blob/master/screenshot/screenshot_20190625_125457.png)

You can also find it on [reddit](https://www.reddit.com/r/unixporn/comments/c56sds/i3gaps_nice_and_sweet_setup/)

## Requirements 

- [fish](https://fishshell.com/)
- [termite](https://github.com/thestinger/termite/)
- [i3-gaps](https://github.com/Airblader/i3)
- [polybar](https://github.com/polybar/polybar)
- [tamzen](https://github.com/sunaku/tamzen-font) (polybar font)
- [NerdFonts](https://github.com/ryanoasis/nerd-fonts) (polybar icons)
- [pywal](https://github.com/dylanaraps/pywal)
- [compton-tryone](https://github.com/tryone144/compton)
- [dunst](https://github.com/dunst-project/dunst)

## Optional

- [cava](https://github.com/karlstav/cava)
- [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)
- [neovim](https://github.com/neovim/neovim) or [vim](https://github.com/vim/vim) compiled with python

## Installation

#### 1 : Clone repository 

`https://github.com/KosenJPG/.dotfiles.git`

#### 2: *OPTIONAL* using [GNU Stow](https://www.gnu.org/software/stow/)

Install stow if you don't have it 

```
Mac:      brew install stow
Ubuntu:   apt-get install stow
Fedora:   yum install stow
Arch:     pacman -S stow
```

Use stow to install the files you want to use. If you don't know how to use stow I would advise you to watch a [tutorial](https://www.youtube.com/watch?v=zhdO46oqeRw&t=380s)

```
cd ~/.dotfiles
stow -v -t ~/.config/ .config/
stow -v -t $HOME home/
stow -v -t ~/.Pictures/alena/ wallpaper/
```

#### 2: just copy the files you want to use to the directories 

E.G
```
cd ~/.dotfiles
cp /.config ~/.config
```

## Final

God bless you all, thank you for coming here, I hope you will like my work. I need to add some credits for [edbizarro](https://github.com/edbizarro/dotfiles) who inspired me a lot.
