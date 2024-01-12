# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/muic/ma484_graphcomb/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "grph"; then

	# Create a new window inline within session layout definition.
	new_window "notes"
	run_cmd "cd notes/"

	new_window "hw"
	run_cmd "cd homework/"

	select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
