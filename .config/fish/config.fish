if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My alias
alias p="python"
alias pycharm="cd /opt/pycharm/bin/ && ./pycharm.sh"
alias ls="exa"
alias cat="bat"
alias music="ncmpcpp"
alias note="sncli"
alias v="lvim"
alias vsrc="source .venv/bin/activate.fish"
alias update="sudo pacman -Syu"
alias pac="sudo pacman -S"

# My environment variables
set -gx EDITOR vim
set -gx SNCLIRC $HOME/.config/snclirc/rc 


function fish_greeting
end

#function to run c program
function crun
    gcc $argv && ./a.out
end

# neofetch
