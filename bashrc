# --------------------
# bashrc file
# --------------------
# include user setting
for config in path alias color prompt
do
	# bash configuration
	if [ -f "${HOME}/.bash/${config}" ]; then
		source "${HOME}/.bash/${config}"
	fi
done
