vim.g['sneak#label'] = true -- enable letters label
vim.g['sneak#use_ic_scs'] = true -- case insensitive
vim.g['sneak#s_next'] = true -- press s again to next

-- change the colors
vim.highlight.create( 'Sneak', { guifg='white', guibg=108, ctermfg='white', ctermbg=108 })
vim.highlight.create( 'SneakScope', { guifg='white', guibg=108, ctermfg='white', ctermbg=108 })

