if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias nv="nvim"

# MacOS specific
if [ $(uname) != "Darwin" ]
    alias hx="helix"
else 
    fish_add_path "/Users/nawat/.cargo/bin"
    fish_add_path "/Users/nawat/Library/Application\ Support/JetBrains/Toolbox/scripts"
    fish_add_path "/opt/homebrew/bin"
    fish_add_path "Users/nawat/.local/bin"
    fish_add_path "/Users/nawat/Library/Application Support/pypoetry/venv/bin"
    fish_add_path "/Users/nawat/.local/share/nvm/v20.5.1/bin/node"
end

starship init fish | source
