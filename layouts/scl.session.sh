# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "/User/nawat/muic/cs371_scalable/p4/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "scl"; then

  # Create a new window inline within session layout definition.
  new_window "be-ord"
  split_h 50

  new_window "pay-inv"
  split_h 50

  new_window "deli"
  split_h 50

  new_window "deploy"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session