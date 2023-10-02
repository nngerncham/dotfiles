session_root "~/muic/"

if initialize_session "muic"; then
  new_window "abs"
  run_cmd "cd ~/muic/ma424_abstract"
  run_cmd "clear"

  new_window "heu"
  run_cmd "cd ~/muic/ma395_heuristic"
  run_cmd "clear"

  new_window "scl"
  run_cmd "cd ~/muic/cs371_scalable"
  run_cmd "clear"
fi

finalize_and_go_to_session
