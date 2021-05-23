starship init fish | source

function _starship_install --on-event starship_install
    if not type -q starship
        if type -q brew
            brew install starship
        else if type -q scoop
            scoop install starship
        else if type -q curl
            curl -fsSL https://starship.rs/install.sh | sh -s -- -f
        end
    end
end
