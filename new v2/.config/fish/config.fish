if test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv fish | source
end
fish_add_path -g "$HOME/.local/bin"
fish_add_path -g "$HOME/go/bin"
if status is-interactive
    if type -q fastfetch
        fastfetch
    end
    if type -q starship
        starship init fish | source
    end
end
