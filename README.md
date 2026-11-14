# Dotfiles

These application settings are managed as symlinks with [GNU Stow](https://www.gnu.org/software/stow/).

The `config` package mirrors paths relative to `$HOME`:

```text
config/.config/nvim -> ~/.config/nvim
config/.config/zed  -> ~/.config/zed
```

```sh
# Run commands from the repository
cd "$HOME/.dotfiles"

# First install when matching files already exist in ~/.config
stow --target="$HOME" --adopt config
git diff --exit-code

# Install or refresh the links
stow --target="$HOME" --restow config

# Update from Git, then refresh the links
git pull
stow --target="$HOME" --restow config

# Preview changes or remove the links
stow --simulate --verbose --target="$HOME" config
stow --delete --target="$HOME" config
```

Because the files in `~/.config` are symlinks, editing them updates this repository directly. Commit and push those changes with Git as usual.

The same operations are available as Make targets:

```sh
make adopt    # First install when matching files already exist
make install  # Install or refresh links
make update   # Pull changes and refresh links
make preview  # Preview Stow operations
make remove   # Remove links
```
