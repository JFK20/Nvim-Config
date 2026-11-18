-- ~/.config/nvim/lua/config/mason.lua
local mason_registry = require 'mason-registry'

-- List of tools you want to auto-install
local tools_to_install = {
  'css-lsp',
  'docker-language-server',
  'gitlab-ci-ls',
  'gopls',
  'html-lsp',
  'lua-language-server',
  'prettier',
  'yaml-language-server',
  'typescript-language-server',
  'pyright'
}

-- Install each tool if not already installed
for _, tool_name in ipairs(tools_to_install) do
  local package = mason_registry.get_package(tool_name)
  if package then
    if not package:is_installed() then
      print("Installing Mason tool: " .. tool_name)
      package:install()
    else
      -- print("Already installed: " .. tool_name)
    end
  else
    print("⚠️  Package not found in registry: " .. tool_name)
  end
end
