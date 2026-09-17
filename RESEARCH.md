# Tmux Plugins Research Archive

**Research date:** 2026-09-15  
**Motivation:** Finding plugins to accelerate tmux learning, specifically for pane management discovery.

## Research Findings

### Learning-Focused Plugins Landscape

**Interactive Keybinding Discovery** (primary goal)
- ✅ **tmux-command-palette** (CHOSEN) — Fuzzy-searchable keybindings with three entry points (prefix, root, copy-mode). Actively maintained, 41 commits.
- `tmux-lskeys` — Prettier keybinding list display. Inactive (5 commits, 3 stars).
- `eduwass/tmux-palette` — Raycast-style command palette. Actively maintained.

**Menu-Driven Operations**
- `tmux-menus` — Keyboard-navigable popup menus for pane operations. Actively maintained (878 commits, 538 stars). Good alternative for users preferring menus over search.

**Pane/Window Navigation**
- `vim-tmux-navigator` — Seamless vi navigation across vim/tmux. Actively maintained (113 commits). Recommended for Vim users.
- `tmux-pane-tree` — Hierarchical sidebar showing all sessions/windows/panes. Actively maintained (197 commits). Excellent for visual learners.
- `tmux-pain-control` — Vi-style standard pane bindings. Stable but limited development (40 commits, 867 stars).
- `tmux-navigate` — Intelligent context-aware navigation.

**Visual Feedback**
- `tmux-mode-indicator` — Color-coded mode display (WAIT/COPY/SYNC). Limited dev (7 commits, 201 stars). Maintained alternative to tmux-prefix-highlight.
- `tmux-prefix-highlight` — Prefix key highlight. No longer actively maintained. (Deprecate in favor of mode-indicator.)

### Installation Outcome
Added `tmux-command-palette` to config. Solves the stated problem: "reduce friction in looking up keybindings" → "explore keybindings interactively."

### Future Plugin Candidates
If user wants to go deeper:
1. **For menu lovers:** `tmux-menus` — more discoverable than keybinding search
2. **For visual hierarchy:** `tmux-pane-tree` — teaches structure via exploration
3. **For Vim users:** `vim-tmux-navigator` — unifies editor + terminal navigation

### Research Limitations
- Plugin ecosystem is active but fragmented (no single "best practices" standard)
- Maintenance varies widely (from inactive to very active)
- Many plugins solve similar problems with different UX paradigms (search vs. menus vs. visual tree)

### Recommended Research Strategy for Future Agents
1. Start at https://github.com/rothgar/awesome-tmux (curated list)
2. Sort by maintenance (GitHub activity, open issues/PRs)
3. Try top 2-3 candidates before committing to config
4. Check if plugin requires external dependencies (fzf, jq, etc.)
