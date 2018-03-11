#!/bin/bash

coin="atradercoin"
x=0
echo $coin Setup 
echo $HOME
read -p $coin" Installer. To install dependencies, you only need to do this once, press 0 to omit 1 to install :" name
if [ name == 1 ]; then
	echo "Installing Dependencies"
	sudo apt-get install build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev 
	sudo add-apt-repository ppa:bitcoin/bitcoin
	sudo apt-get update
	sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
fi
if [ ! -f $HOME/$coin ]; then
	echo "creating atradercoin"
	mkdir $HOME/$coin
	let x++
fi
if [ ! -f $HOME/.$coin ]; then
	echo "creating .atradercoin"
        mkdir $HOME/.$coin
	let x++
fi
if [ ! -f $HOME/$coin/atradercoin ]; then
	echo "copying atradercoin"
        cp atradercoin $HOME/$coin/atradercoin
	let x++
fi
if [ ! -f $HOME/$coin/atradercoin-qt ]; then
	echo "copying atradercoin-qt"
        cp atradercoin-qt $HOME/$coin/atradercoin-qt
	let x++
fi
echo "copying atradercoin.conf"
if [ ! -f $HOME/.$coin/atradercoin.conf ]; then
	echo "copying atradercoin.conf"
        cp atradercoin.conf $HOME/.$coin/atradercoin.conf
	let x++
fi
echo "copying atradercoin_tn.conf"
if [ ! -f $HOME/.$coin/atradercoin_tn.conf ]; then
	echo "copying atradercoin_tn.conf"
        cp atradercoin_tn.conf $HOME/.$coin/atradercoin_tn.conf
	let x++
fi
if [ ! -f $HOME/.$coin/at.sh ]; then
 	echo "copying at.sh"
        cp at.sh $HOME/.$coin/at.sh
	let x++
fi
echo $x" files copied"


