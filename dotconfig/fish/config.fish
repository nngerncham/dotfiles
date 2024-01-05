if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias lv="lvim"
alias nv="nvim"
export EDITOR="lvim"

fish_add_path "$HOME/.tmuxifier/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/.cargo/bin"

if [ $(uname) != Darwin ]
    # Linux stuff
    alias hx="helix"

    export NVM_DIR="$HOME/.nvm"
    fish_add_path "/home/nawat/.local/share/JetBrains/Toolbox/scripts"
    fish_add_path /usr/local/texlive/2023/bin/x86_64-linux
    fish_add_path /home/nawat/go/bin

    export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/nawat/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

else
    # MacOS stuff
    fish_add_path /opt/homebrew/bin
    fish_add_path "$(brew --prefix)/opt/coreutils/libexec/gnubin"

    fish_add_path "/Users/nawat/Library/Application\ Support/JetBrains/Toolbox/scripts"
    fish_add_path "/Users/nawat/.local/share/nvm/v20.6.1/bin"
end

# if venv not set, then add pyenv to path
if test -z "$VIRTUAL_ENV"
    export PYENV_ROOT="$HOME/.pyenv"
    pyenv init - | source
end

starship init fish | source
