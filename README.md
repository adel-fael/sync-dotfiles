# Setup

1. Install the required packages:
   - **Fedora**
     ```bash
     sudo dnf install git stow zsh
     ```
   - **Arch / Omarchy**
     ```bash
     sudo pacman -S git stow zsh
     ```

2. Clone this repository into your home directory and name it `.dotfiles`:

   ```bash
   cd ~
   git clone <your-repository-url> .dotfiles
   ```

3. Install Antidote:

   ```bash
   git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
   ```

4. Make Zsh your default shell:

   ```bash
   chsh -s "$(which zsh)"
   ```

   Log out and back in (or reboot) for the change to take effect.

5. Make the sync script executable:

   ```bash
   chmod +x ~/.dotfiles/.bin/sync-dotfiles
   ```

   Verify:

   ```bash
   ls -l ~/.dotfiles/.bin/sync-dotfiles
   ```

6. Install the required Zsh completions:

   https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df

7. Install Starship:

   https://starship.rs/guide/

8. Install your preferred terminal (recommended):
   - Ghostty
   - Kitty
   - Alacritty
   - Foot

9. Run the sync script:

   ```bash
   ~/.dotfiles/.bin/sync-dotfiles
   ```

   This will create the required symlinks using GNU Stow.

---

# Repository Structure

```text
.dotfiles/
├── .bin/
├── config/
├── git/
├── zsh/
└── README.md
```
