# Neovim Config using NvChad 2.5

## Requirements
1. Neovim >= 0.11
2. A Nerd Font (e.g. GeistMono Nerd Font)
3. tree-sitter CLI + C compiler (for `:TSInstall`): `sudo pacman -S tree-sitter-cli gcc`
4. ripgrep (for Telescope `<leader>ff` / `<leader>fw`): `sudo pacman -S ripgrep` (Ubuntu: `sudo apt install ripgrep`)
5. Clone into the config dir:
   `git clone git@github.com:JFK20/Nvim-Config.git ~/.config/nvim && nvim`

## Keymaps
- `<leader>ff` – fuzzy find over file names **and** file contents in one picker (needs ripgrep)

## Add an LSP
1. Add `lsp/<name>.lua` – every file in [lsp/](./lsp) is enabled automatically
2. Add the Mason package to [mason.lua](./lua/configs/mason.lua) to auto-install it

## C / C++
Install `clang` and `lldb` from your system (provides clangd, clang-format and lldb-dap).

## JavaScript / TypeScript
Mason installs `typescript-language-server` and `prettier`, both need Node.js:
```
sudo pacman -S nodejs npm
```
Then inside Neovim, for syntax highlighting:
```
:TSInstall javascript typescript tsx
```

## Go
1. Install [Go](https://go.dev/doc/install) (gopls is installed by Mason)
2. Formatter and debugger tools:
   ```
   go install mvdan.cc/gofumpt@latest
   go install github.com/segmentio/golines@latest
   go install -v github.com/incu6us/goimports-reviser/v3@latest
   go install github.com/go-delve/delve/cmd/dlv@latest
   ```
