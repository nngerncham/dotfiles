# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/abs"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "abs"; then

  new_window "notes"
  run_cmd "cd ~/muic/ma424_abstract/notes/"

  new_window "homework"
  run_cmd "cd ~/muic/ma424_abstract/homework/"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
