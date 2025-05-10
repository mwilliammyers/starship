starship init fish | source

function _starship_install --on-event starship_install
    if not type -q starship
        if type -q apt
            apt install starship -y
        else if type -q pacman
            pacman -S starship --noconfirm
        else if type -q dnf
            dnf install starship -y
        else if type -q zypper
            zypper install -y starship
        else if type -q xbps-install
            xbps-install -S starship -y
        else if type -q emerge
            emerge app-shells/starship
        else if type -q apk
            apk add starship
        else if type -q brew
            brew install starship
        else if type -q port
            port install starship
        else if type -q nix-env
            nix-env -iA nixpkgs.starship
        else if type -q scoop
            scoop install starship
        else if type -q choco
            choco install starship -y
        else if type -q winget
            winget install --id Starship.Starship -e --accept-source-agreements --accept-package-agreements
        else if type -q conda
            conda install -c conda-forge starship -y
        else if type -q cargo
            cargo install starship --locked
        else if type -q curl
            curl -sS https://starship.rs/install.sh | sh
        end
    end
end