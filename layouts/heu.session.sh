# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/heu"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "heu"; then

  new_window "lectures"
  run_cmd "cd ~/muic/ma395_heuristic/lectures/"
  split_h 50

  new_window "report"
  run_cmd "cd ~/muic/ma395_heuristic/homework/hw4/report/"

  new_window "code"
  run_cmd "cd ~/muic/ma395_heuristic/homework/hw4/code/"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
