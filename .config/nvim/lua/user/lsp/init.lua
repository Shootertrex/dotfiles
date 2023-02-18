local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
	return
end

lsp.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
