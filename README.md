# Tmux Config

Personal tmux setup focused on learning velocity, vi/vim integration, and interactive UX.

## Quick Start

Run `init.sh` before sourcing the tmux config for the first time:
```sh
sh ~/.config/tmux/init.sh
```

## Documentation Index

**For Claude/Agents working on this repo:**
- **[CLAUDE.md](./CLAUDE.md)** — Project context, philosophy, and next-agent guidance
- **[PLUGINS.md](./PLUGINS.md)** — Reference for all installed plugins and their keybindings
- **[RESEARCH.md](./RESEARCH.md)** — Archive of plugin research (tmux learning tools landscape)

**For manual navigation:**
- `tmux.conf` — Main configuration file
- `plugins/` — Installed plugins (managed by tpm)

## Key Keybindings

| Binding | Action |
|---------|--------|
| `Ctrl-F` | Tmux prefix key |
| `C-F + ?` | Browse keybindings (command-palette) |
| `C-F + o` | Switch sessions (sessionx) |
| `C-F + p` | Open floating pane (floax) |
| `C-F + T` | Jump to links/text (thumbs) |

See [PLUGINS.md](./PLUGINS.md) for full keybinding reference.

## Configuration Philosophy

- **Vi-style throughout**: hjkl navigation, gg/G jumps, visual modes (v/V/C-v)
- **Interactive tools**: Reduce manual docs lookups via fuzzy search and menus
- **Cross-platform**: macOS/Linux/WSL clipboard support
- **Learning-focused**: Prioritize discovery over memorization
