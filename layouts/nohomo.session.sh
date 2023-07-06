# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/muic/non-homog-insurance/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "nohomo"; then

  # Create a new window inline within session layout definition.
  new_window "presentation"
  run_cmd "cd presentation"

  new_window "computation"
  run_cmd "cd computation"
  run_cmd "jupyter-lab"

  new_window "presentation-render"
  run_cmd "cd presentation"
  run_cmd "make watch"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
