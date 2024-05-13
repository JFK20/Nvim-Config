# Neovim Config using NvChad
## Requirements
1. Neovim > 0.9.0
2. Nerd Font, No Mono Font (GeistMono Nerd Font)
3. NvChad: git clone https://github.com/NvChad/starter ~/.config/nvim && nvim <br>

## Usage
This config sits in ~/.config/nvim/nvim/lua

## Add Lsp
1. Add lsp to ensure installed in [plugins](./custom/plugins.lua)
2. Add lspgconfig.<lspname>.setup in ./custom/configs/lspconfig.lua

## Go Lsp
Requirements:
1. have [Go](https://go.dev/doc/install) Installed <br>
  more help [here](https://dev.to/deadwin19/how-to-install-golang-on-wslwsl2-2880) 
2. add [Gopls](https://pkg.go.dev/golang.org/x/tools/gopls#section-readme) <br>
  with 'go install golang.org/x/tools/gopls@latest'
  important restart System afterwars

3. Add the folloiwin go packges to the system via <br>
    go install github.com/segmentio/golines@latest <br>
    go install -v github.com/incu6us/goimports-reviser/v3@latest <br>
    go install github.com/go-delve/delve/cmd/dlv@latest
