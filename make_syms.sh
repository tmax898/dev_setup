# install.sh
# symlink you dotfiles to appropriate places

DIR=$HOME/projects/dotFiles

DOTFILES=(
	".bin"
	".bashrc"
	".bash_profile"
	".gitconfig"
	".profile"
	".tmux.conf"
	".xinitrc"
	".config/cmus/cmus.theme"
	".config/compton.conf"
	".config/dunst"
	".config/feh"
	".config/mpv"
	".config/nvim"
	".local/share/fonts"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
done
