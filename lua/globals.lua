vim.api.nvim_create_user_command("CopyMessages", ":let @+ = execute('messages')", {})

vim.api.nvim_create_user_command("Zshrc", ":e ~/.zshrc", {})
vim.api.nvim_create_user_command("SourceZshrc", ":!source ~/.zshrc", {})
vim.api.nvim_create_user_command("Standup", ":e ~/worknotes/standup/2026/", {})
vim.api.nvim_create_user_command("Worknotes", ":e ~/worknotes/", {})

vim.api.nvim_create_user_command("Slackify",
	function () 
		print("TEST")
	end, 
{})
