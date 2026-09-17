# Claude Code Context for Tmux Config

## Project Overview
This is a personal tmux configuration with a focus on:
- **Learning velocity**: Reducing friction when discovering keybindings and pane management
- **Vi/Vim integration**: Extensive vi-style keybindings throughout
- **Modern UX**: Interactive tools (fzf, floating panes, session switchers) for faster workflows
- **Cross-platform clipboard**: macOS/Linux/WSL support via OSC52 fallback + native tools

## Current Plugin Stack
See `PLUGINS.md` for detailed reference on all installed plugins and their purposes.

**Core learning plugins:**
- `tmux-command-palette` — fuzzy-searchable keybindings (`prefix + ?`)
- `tmux-fzf` — interactive session/window/pane browsing
- `tmux-sessionx` — quick session navigation (`prefix + o`)
- `tmux-floax` — floating pane launcher (`prefix + p`)

**Session management:**
- `tmux-resurrect` — persist sessions across restarts
- `tmux-continuum` — auto-save every 1 minute

**Quality of life:**
- `tmux-yank` — improved copy/paste with clipboard integration
- `tmux-thumbs` — vimium-style link/text jumping (`prefix + T`)
- `catppuccin-tmux` — Mocha theme styling

## Configuration Style

### Keybinding Philosophy
- **Prefix key**: `Ctrl-F` (not default C-b)
- **Copy-mode**: Vi-style (`mode-keys vi`)
- **Vim-like navigation**: `hjkl` for panes, `gg/G` for jump-to-top/bottom
- **Modern scrolling**: `C-u/d/f/b` for half/full page scrolling (nvim-style)
- **Selection modes**: `v/V/C-v` for char/line/block selection

### Terminal & Display
- Uses `tmux-256color` with RGB support
- Status bar at top
- Zero escape-time delay
- 2-second pane-number display
- Catppuccin Mocha color scheme

### Custom Bindings Documentation
User has built custom help popups:
- `prefix + ?` → list prefix-table keybindings with column formatting
- `prefix + C-?` → list copy-mode-vi keybindings

## Next Agent Tasks

### Common Workflows
1. **Adding new plugins**: Edit tmux.conf under `set -g @plugin`, then clone repo to `~/.config/tmux/plugins/`
2. **Tweaking keybindings**: Keep vi-style paradigm; test in copy-mode first
3. **Styling changes**: Edit Catppuccin config vars (lines 84-101) or window-style/window-active-style

### Before Making Changes
- Check `PLUGINS.md` to understand what each plugin does
- Keep the vi/vim integration intact (it's intentional)
- Test clipboard behavior on macOS before changing (it's platform-specific)
- Respect the learning-focused ethos: new features should reduce friction, not add it

## External Resources
- Plugin registry: https://github.com/tmux-plugins
- Awesome-tmux: https://github.com/rothgar/awesome-tmux
