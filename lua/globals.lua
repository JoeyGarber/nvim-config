vim.api.nvim_create_user_command("CopyMessages", ":let @+ = execute('messages')", {})
