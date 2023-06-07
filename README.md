# dotfiles
bspwm



```
mkdir .config/bspwm
mkdir .config/sxhkd
cp /etc/X11/xinit/xinitrc ~/.xinitrc
```

## enter these lines in last of the file
```
setxkbmap us &
xsetroot -cursor_name left_ptr
picom -f &
exec bspwm
```
## nvim
```
https://github.com/jdhao/nvim-config
```

## for wifi
```
sudo systemctl enable NetworkManager
````

## requirements:
```
sudo snap install pylsp
yay -S npm nodejs vim-language-server betterlockscreen
```
## To run android-studio smothly
```
sudo _JAVA_AWT_WM_NONREPARENTING=1 android-studio
```

## TODO
[] Making an automated script
[] Theming script

