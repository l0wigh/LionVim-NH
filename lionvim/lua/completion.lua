vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>'", {noremap = true, silent = true, expr = true})
