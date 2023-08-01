if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias nv="nvim"
export EDITOR="nvim"

# Linux stuff
if [ $(uname) != "Darwin" ]
    alias hx="helix"

    export PYENV_ROOT="/home/nawat/.pyenv"
    pyenv init - | source

    export NVM_DIR="$Home/.nvm"
    fish_add_path "/home/nawat/.local/share/JetBrains/Toolbox/scripts"
    fish_add_path "/home/nawat/.tmuxifier/bin"
    fish_add_path "/home/nawat/.local/bin"
    fish_add_path "/usr/local/texlive/2023/bin/x86_64-linux"
    fish_add_path "/home/nawat/.pyenv/bin"

# MacOS stuff
else 
    fish_add_path "/Users/nawat/.cargo/bin"
    fish_add_path "/Users/nawat/Library/Application\ Support/JetBrains/Toolbox/scripts"
    fish_add_path "/opt/homebrew/bin"
    fish_add_path "Users/nawat/.local/bin"

end

