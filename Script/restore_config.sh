#!/bin/bash


#config folder checking there is available or not
if [ -d "$HOME/.config"]
then
  echo "We are cheking for .config folder installing the bspwm..."
else
  mkdir -p $HOME/.config 
fi 


#local folder checking there is available or not
if [ -d "$HOME/.local/bin"]
then
  echo "We are looking for .local/bin folder seems like you already have wow"
else
  mkdir -p $HOME/.local/bin 
fi 


#font folder checking there is available or not
if [ -d "$HOME/.font"]
then
  echo "Every thing is ready just wait sometime more your bspwm is geting ready soon"
else
  mkdir -p $HOME/.font 
fi

sleep 2 &&


cp ../Config/.config/* $HOME/.config/ 
cp ../Config/.local/bin/* $HOME/.local/bin/ 
cp ../Config/.fonts/* $HOME/.fonts
cp ../Config/.zshrc $HOME/
