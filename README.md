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
<details>
<summary><h4>Android-studio</h4></summary>

## To run android-studio smothly
```
sudo _JAVA_AWT_WM_NONREPARENTING=1 android-studio
```
</details>
<details>
<summary><h4>To-Do</h4></summary>

- [ ] Making an automated script
- [ ] Theme script

</details>

