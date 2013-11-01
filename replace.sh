# --------------------
# replace dotfiles
# --------------------
pwd=`pwd`
if [ "dotfiles" != `basename ${pwd}` ]; then
	echo "[ERROR] Please then run a dotfile to the current directory."
	exit
fi

for object in bash bash_profile bashrc 
do
	if [ ! -x "${HOME}/.${object}" ]; then
		ln -s ${pwd}/${object} ${HOME}/.${object}
	fi
done

# load the apps directory
for object in vimrc
do
	if [ ! -x "${HOME}/.apps/${object}" ]; then
		ln -s ${pwd}/apps/${object} ${HOME}/.${object}
	fi
done

