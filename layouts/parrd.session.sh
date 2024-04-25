# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/PsnProjects/parrd_sampling/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "sen"; then

	# Create a new window inline within session layout definition.
	new_window "cpp"
	run_cmd "cd cpp"

	new_window "rust"
	run_cmd "cd rust/"

	new_window "sandbox"
	run_cmd "cd ~/sandbox"

	# Select the default active window on session creation.
	select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
