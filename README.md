# vilgotf/dotfiles
My dotfiles, managed with [`chezmoi`][chezmoi].

## Installation
### Get `chezmoi`
`curl -fsLS git.io/chezmoi | sh -s -- -b ~/.local/bin`
### Apply dotfiles
Insert name and email into `~/.config/chezmoi/chezmoi.toml`.  
Example:
```toml
[data]
        email = "vilgot@fredenberg.xyz"
        name = "Vilgot Fredenberg"
```
Then execute `chezmoi init --apply vilgotf`

### Neovim
Install neovim pluggins by issuing `:PaqInstall`

## Goals
Making software adhere to the "[XDG Base Directory Specification][xdg-spec]" is the current main focus, but a simple Zsh and neovim configuration is also included.
In the future I'd like to extend the neovim conf and add more installation scripts.
### Assumptions
GNOME is the expected DE and some things *might* not work OOTB without it.

## Updates
Run [`zsh-mod-update`](https://github.com/vilgotf/dotfiles/blob/main/dot_local/bin/executable_zsh-mod-update) to update the zsh pluggins, `:PaqUpdate` to update the neovim pluggins and `chezmoi update` to sync repo changes.

[chezmoi]: https://github.com/twpayne/chezmoi
[xdg-spec]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
