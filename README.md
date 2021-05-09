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

## Goals
Making software adhere to the "[XDG Base Directory Specification][xdg-spec]" is the current main focus.
### Assumptions
GNOME is the expected DE and some things *might* not work OOTB without it.

## Updates
Run `chezmoi update` to sync repo changes.

[chezmoi]: https://github.com/twpayne/chezmoi
[xdg-spec]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
