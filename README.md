# Neovim Config

Personal Neovim configuration built on [LazyVim](https://lazyvim.github.io/).

## Setup

### Prerequisites

- Neovim >= 0.11
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)

### Install

```bash
# Back up existing config (if any)
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone git@github.com:<username>/nvim.git ~/.config/nvim

# Launch Neovim — plugins install automatically
nvim
```

On first launch, Lazy installs all plugins and Mason installs LSP servers and formatters. This takes a minute or two.

## What's Included

**Theme:** Gruvbox

**LazyVim Extras (28):**

| Category | Extras |
|---|---|
| Coding | mini-surround, neogen, yanky |
| DAP | core (debugger) |
| Editor | aerial, fzf, harpoon2, illuminate, inc-rename, leap, mini-diff, mini-move, telescope |
| Formatting | black, prettier |
| Language | docker, json, markdown, tailwind, typescript, typescript/vtsls |
| Linting | eslint |
| UI | indent-blankline, mini-animate, mini-indentscope, mini-starter, treesitter-context |
| Util | octo (GitHub PRs/issues) |

**Custom Plugins:**

| Plugin | Description |
|---|---|
| mini.cursorword | Highlights all instances of the word under cursor |
| mini.map | Minimap sidebar, toggle with `<leader>um` |

## Customization

- **Options:** `lua/config/options.lua`
- **Keymaps:** `lua/config/keymaps.lua`
- **Autocmds:** `lua/config/autocmds.lua`
- **Plugins:** Add files to `lua/plugins/` — Lazy loads them automatically

See the [LazyVim docs](https://lazyvim.github.io/) for more.
