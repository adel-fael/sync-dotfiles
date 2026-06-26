1. Install: stow, git
   - **Fedora:** `sudo dnf install stow git`
   - **Arch/Omarchy:** `sudo pacman -S stow git`
2. navigate to Home directory and clone this repo and rename it to `.dotfiles` 
3. to give permission to run the script: 
    
    ```bash
    chmod +x $HOME/.dotfiles/.bin/sync-dotfiles
    ```
    *verify permission*
    
    ```bash
    ls -l $HOME/.dotfiles/.bin/sync-dotfiles
    ```
4. install `zsh` and `oh-my-zsh`
   - **Fedora:** `sudo dnf install zsh` then `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
   - **Arch/Omarchy:** `sudo pacman -S zsh` then `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
5. make zsh default shell:
    ```bash
    chsh -s $(which zsh)
    ```
6. also download these https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df to complete the zsh
7. install [starship.rs](https://starship.rs/guide/)
8. install your preferred terminal: ghostty, alacritty, kitty, or foot
9. after running the script the files will populate and linked automatically
    
    ---

## structure 

in the home directory 

```bash
.dotfiles/
    ---- .bin
    ---- git
    ---- rest
```

