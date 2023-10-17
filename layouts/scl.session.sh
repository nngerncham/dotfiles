# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/scl"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "scl"; then

  # Create a new window inline within session layout definition.
  new_window "fesh"
  run_cmd "cd ~/muic/cs371_scalable/p2/toktik-frontend"

  new_window "besh"
  run_cmd "cd ~/muic/cs371_scalable/p2/toktik-backend/"

  new_window "run"
  run_cmd "cd ~/muic/cs371_scalable/p2/toktik-frontend/toktik-frontend/"
  run_cmd "yarn serve"
  split_h 50
  run_cmd "cd ~/muic/cs371_scalable/p2/toktik-backend/"
  run_cmd "poetry run ./manage.py migrate"
  run_cmd "poetry run ./manage.py runserver"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
