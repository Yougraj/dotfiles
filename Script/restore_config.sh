#!/bin/bash


#config folder checking there is available or not
if [ -d "$HOME/.config" ]; 
then
  echo "We are cheking for .config folder installing the bspwm..."
else
  mkdir -p $HOME/.config 
fi 


#local folder checking there is available or not
if [ -d "$HOME/.local/bin" ]; 
then
  echo "We are looking for .local/bin folder seems like you already have wow"
else
  mkdir -p $HOME/.local/bin 
fi 


#font folder checking there is available or not
if [ -d "$HOME/.font" ];
then
  echo "Every thing is ready just wait sometime more your bspwm is geting ready soon"
else
  mkdir -p $HOME/.fonts
fi

sleep 2 &&


cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
echo "setxkbmap us &" >> $HOME/.xinitrc
echo "xsetroot -cursor_name left_ptr" >> $HOME/.xinitrc
echo "picom -f &" >> $HOME/.xinitrc
echo "exec bspwm" >> $HOME/.xinitrc






cp -rf ../Config/.config/* $HOME/.config/ 
cp -rf ../Config/.local/bin/* $HOME/.local/bin/ 
cp -rf ../Config/.fonts/* $HOME/.fonts
cp ../Config/.zshrc $HOME/
cp ../Config/.p10k.zsh $HOME/ 
