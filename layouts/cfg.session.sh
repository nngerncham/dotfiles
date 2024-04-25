# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
# session_root "~/.config/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "cfg"; then

	# Create a new window inline within session layout definition.
	new_window "nv-config"
	run_cmd "cd ~/.config/nvim"

	new_window "lv-config"
	run_cmd "cd ~/.config/lvim"

	new_window "dotfiles"
	run_cmd "cd $HOME/dotfiles"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
