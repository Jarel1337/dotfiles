# vilgotf/dotfiles
My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

## Install
### Get `chezmoi`
`curl -fsLS git.io/chezmoi | sh -s -- -b ~/.local/bin`
### Apply my dotfiles
Insert name and email into `~/.config/chezmoi/chezmoi.toml`:
```toml
[data]
        email = "vilgot@fredenberg.xyz"
        name = "Vilgot Fredenberg"
```
Then execute `chezmoi init --apply vilgotf`
