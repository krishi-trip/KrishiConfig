if status is-interactive
    # Commands to run in interactive sessions can go here
    clear
end

alias brew "/opt/homebrew/bin/brew"
alias tree "/opt/homebrew/Cellar/tree/2.0.4/bin/tree"
alias nvim "/opt/homebrew/Cellar/neovim/0.8.1/bin/nvim"

if status --is-login
    pokemon-colorscripts -r 1-5 --no-title
end
