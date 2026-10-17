# Neovim Config

A personal Neovim setup for Windows, Linux, and macOS. It uses the built-in `vim.pack` plugin manager, so there's no separate plugin manager to install.

## Features

- **Colour scheme:** Catppuccin (Mocha), plus a pywal16 colour override
- **File explorer:** nvim-tree (with git status colours) and oil.nvim
- **Git:** gitsigns, lazygit (`<leader>gg`)
- **Fuzzy finding:** Telescope
- **Autocomplete and snippets:** blink.cmp, LuaSnip, friendly-snippets
- **LSP:** basedpyright (Python), ts_ls (TypeScript/JavaScript)
- **Formatting:** conform.nvim (ruff for Python, prettier for web files), formats on save
- **Tabs and status line:** barbar, lualine
- **Dashboard:** alpha
- **Floating terminal:** FTerm (`<A-t>`)
- **Workflows:** meerkat.nvim, with saved workflows in `workflows/`
- **Keymap help:** which-key

## Requirements

### Required

| Tool | Notes |
| --- | --- |
| Neovim 0.12+ | Needed for the built-in `vim.pack`. Check with `nvim --version`. |
| Git | Used by `vim.pack` to install plugins, and by gitsigns and nvim-tree. |
| A Nerd Font | Needed for file and git icons. Install one, for example JetBrainsMono Nerd Font, and set it as your terminal font. |

### Recommended

| Tool | Used for |
| --- | --- |
| lazygit | `<leader>gg` git UI |
| ripgrep (`rg`) | Telescope live grep |
| fd | Telescope file finding |
| Node.js and npm | `ts_ls`, `prettier` |
| Python 3 | `basedpyright`, `ruff` |
| pywal (`pip install pywal`) | Generates the colours used by the pywal16 plugin |

Install the language tools with:

```sh
npm install -g typescript typescript-language-server prettier
pip install basedpyright ruff
```

## Installation

The config folder must be named `nvim` and sit in the correct location for your OS.

### Windows (PowerShell)

The config lives at `%LOCALAPPDATA%\nvim`.

```powershell
git clone <your-repo-url> "$env:LOCALAPPDATA\nvim"
```

Install the tools with winget or your preferred package manager:

```powershell
winget install Neovim.Neovim
winget install Git.Git
winget install JesseDuffield.lazygit
winget install BurntSushi.ripgrep.MSVC
winget install sharkdp.fd
winget install OpenJS.NodeJS
winget install Python.Python.3
```

### Linux

The config lives at `~/.config/nvim`.

```sh
git clone <your-repo-url> ~/.config/nvim
```

Install the tools with your package manager. For example, on Debian/Ubuntu:

```sh
sudo apt install git ripgrep fd-find nodejs npm python3 python3-pip
```

Install lazygit and Neovim from their official releases or your distro's package manager, as the versions in some distros are out of date.

### macOS

The config lives at `~/.config/nvim`.

```sh
git clone <your-repo-url> ~/.config/nvim
brew install neovim git lazygit ripgrep fd node python
```

## First run

1. Start Neovim with `nvim`.
2. Wait while `vim.pack` downloads the plugins. This happens once on first launch.
3. Restart Neovim once the download finishes.
4. Run `:checkhealth` to see if anything is missing.

Plugin versions are pinned in `nvim-pack-lock.json`, so you get the same versions on every machine.

## Platform-specific setup

The config works on Windows, Linux, and macOS without changes. The floating terminal uses PowerShell on Windows and your `shell` option elsewhere, and the pywal cache lives at `~/.cache/wal` on all platforms.

### pywal colours

Generate the colours once, using an image of your choice:

```sh
wal -i /path/to/wallpaper.jpg
```

If you don't want pywal, remove `lua/plugins/pywal16.lua` and its `require` line in `init.lua`. The Catppuccin colour scheme in `lua/config/plugins.lua` is used as a fallback.

### lazygit config

lazygit stores its config in a platform-specific location:

| OS | Location |
| --- | --- |
| Windows | `%LOCALAPPDATA%\lazygit\` |
| Linux | `~/.config/lazygit/` |
| macOS | `~/Library/Application Support/lazygit/` |

To stop the first-run welcome popup, set `startuppopupversion` in `state.yml` in that folder to a high number, such as `999`.

## Keymaps

The leader key is set in `lua/core/keymaps.lua`. Press the leader key and wait, and which-key will show the available mappings.

Some useful ones:

| Key | Action |
| --- | --- |
| `<leader>e` | Toggle nvim-tree |
| `<leader>gg` | Open lazygit |
| `<leader>p` | Switch to the project root |
| `<A-t>` | Toggle floating terminal (normal and terminal mode) |
| `<Esc>` | Clear search highlighting |

## Troubleshooting

- **Icons show as boxes or question marks:** your terminal isn't using a Nerd Font.
- **Plugins didn't install:** check that Git is on your `PATH`, then restart Neovim.
- **LSP or formatting does nothing:** check that the language server or formatter is installed and on your `PATH`. Run `:checkhealth vim.lsp` to see details.
- **lazygit keys don't respond:** make sure the terminal is in terminal mode (the statusline shows `TERMINAL`). Press `i` to enter it.
- **Colours look wrong:** on Windows, check the `pywal16` path above. Re-run `wal` after changing wallpapers.

## Folder structure

```
init.lua                  Entry point; loads everything else
lua/core/                 Options, keymaps, autocommands, project root helper
lua/config/plugins.lua    Colour scheme and plugin loading order
lua/plugins/              One file per plugin or group of plugins
nvim-pack-lock.json       Pinned plugin versions (managed by vim.pack)
workflows/                meerkat.nvim workflows
```
