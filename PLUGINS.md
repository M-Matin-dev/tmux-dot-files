# Tmux Plugins Reference

## Learning & Discovery

### tmux-command-palette
**Purpose:** Interactive fuzzy-searchable keybinding discovery  
**Repo:** https://github.com/lost-melody/tmux-command-palette  
**Keybindings:**
- `prefix + ?` → browse prefix-table keybindings
- `prefix + BSpace` → browse root/global keybindings
- `?` (in copy-mode) → browse copy-mode-vi keybindings

**Why:** Eliminates manual docs lookups for keybindings. Learn by exploration.

---

### tmux-fzf
**Purpose:** Interactive fuzzy menu for sessions, windows, panes  
**Repo:** https://github.com/sainnhe/tmux-fzf  
**Main feature:** Live preview + search for tmux environment navigation  

**Why:** Visual understanding of tmux hierarchy; faster than typing window numbers.

---

## Session Management

### tmux-sessionx
**Purpose:** Enhanced session switcher with zoxide integration  
**Repo:** https://github.com/omerxx/tmux-sessionx  
**Keybinding:** `prefix + o`  
**Config:**
- Auto-accepts off (manual confirmation required)
- Watches `~/.config` custom paths
- 85% height, 75% width
- Zoxide mode enabled

**Why:** Quick session navigation without remembering session names.

---

### tmux-resurrect
**Purpose:** Persist tmux sessions across machine restarts  
**Repo:** https://github.com/tmux-plugins/tmux-resurrect  
**Config:** Saves to `~/.local/share/tmux/resurrect`, Neovim session strategy

---

### tmux-continuum
**Purpose:** Auto-save sessions continuously  
**Repo:** https://github.com/tmux-plugins/tmux-continuum  
**Config:** 1-minute save interval, auto-restore enabled on tmux start

**Why:** Hands-off session persistence. No manual save needed.

---

## Pane & Window Management

### tmux-floax
**Purpose:** Floating pane launcher  
**Repo:** https://github.com/omerxx/tmux-floax  
**Keybinding:** `prefix + p`  
**Config:** 80% width/height, magenta border, blue text, auto-cd enabled

**Why:** Quick scratchpad pane without disrupting main layout.

---

## Copy/Paste & Text Operations

### tmux-yank
**Purpose:** Enhanced copy/paste with clipboard integration  
**Repo:** https://github.com/tmux-plugins/tmux-yank  

**Why:** Seamless system clipboard integration (handled via OSC52 + platform tools).

---

### tmux-thumbs
**Purpose:** Vimium-style link/text jumping and selection  
**Repo:** https://github.com/fcsonline/tmux-thumbs  
**Keybinding:** `prefix + T`  

**Why:** Visual hint system teaches Vim-like navigation; faster than manual text selection.

---

## Theming

### catppuccin-tmux
**Purpose:** Mocha color theme for tmux  
**Repo:** https://github.com/omerxx/catppuccin-tmux (user fork)  
**Note:** Custom fork includes meeting script utilities

**Config highlights:**
- Window separators: `""` (left), ` ` (right), ` █` (middle)
- Status modules: `session` (left), `user directory` (right)
- Icon fill mode, no separator connect

---

## Utilities

### tmux-sensible
**Purpose:** Sensible default settings  
**Repo:** https://github.com/tmux-plugins/tmux-sensible  

---

### tpm
**Purpose:** Tmux Plugin Manager (plugin loader)  
**Repo:** https://github.com/tmux-plugins/tpm  
**Install new plugins:** `prefix + I` (capital i)

---

## Plugin Installation Notes

All plugins are cloned to `~/.config/tmux/plugins/` and managed by tpm.

**To add a new plugin:**
1. Add `set -g @plugin 'owner/repo'` to tmux.conf
2. Run `prefix + I` to install, or manually: `git clone https://github.com/owner/repo ~/.config/tmux/plugins/repo`
3. Source config: `tmux source-file ~/.config/tmux/tmux.conf`

**To remove a plugin:**
1. Remove the `set -g @plugin` line from tmux.conf
2. Delete the plugin directory manually: `rm -rf ~/.config/tmux/plugins/plugin-name`
