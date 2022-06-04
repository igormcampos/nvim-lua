vim.g.mapleader = " "

-- set functions for all modes
local default_map = function(mode, comb, comm)
    vim.api.nvim_set_keymap(mode, comb, comm, { noremap = true })
end
local n = function(comb, comm)
    default_map('n', comb, comm)
end
local i = function(comb, comm)
    default_map('i', comb, comm)
end
local v = function(comb, comm)
    default_map('v', comb, comm)
end

-- save and source files
n('<C-s>', ':w<CR>')
i('<C-s>', '<Esc>:w<CR>')
n('<Leader>ss', ':so init.lua<CR>')

-- quit vim without saving
n('<C-q>', ':%bd|q!<CR>')

-- new line in insert mode
i('<C-o>', '<Esc>o')

-- quit insert mode
i('jk', '<Esc>')
i('kj', '<Esc>')

-- caps
i('<C-u>', '<Esc>g~awa')
n('<C-u>', 'g~aw')

-- change word
n('<C-c>', 'ciw')

-- toggle line wrap
n('<A-w>', ':set wrap!<CR>')

-- keep selection after tab
v('<', '<gv')
v('>', '>gv')
v('<S-Tab>', '<gv')
v('<Tab>', '>gv')
n('<S-Tab>', 'V<')
n('<Tab>', 'V>')

-- create vertical split
n('<A-v>', ':vs<CR>')
i('<A-v>', '<Esc>:vs<CR>')
v('<A-v>', '<Esc>:vs<CR>')

-- navigate splits
n('<A-h>', '<C-w>h')
n('<A-j>', '<C-w>j')
n('<A-k>', '<C-w>k')
n('<A-l>', '<C-w>l')

-- quick move
n('<C-h>', '20h')
n('<C-j>', '20j')
n('<C-k>', '20k')
n('<C-l>', '20l')
v('<C-h>', '20h')
v('<C-j>', '20j')
v('<C-k>', '20k')
v('<C-l>', '20l')

-- settings mappings
n('<Leader>sdi', ':vsp<Space>~/.config/nvim/init.lua<CR>')
n('<Leader>sdp', ':vsp<Space>~/.config/nvim/lua/plugins.lua<CR>')
n('<Leader>sds', ':vsp<Space>~/.config/nvim/lua/settings.lua<CR>')
n('<Leader>sdm', ':vsp<Space>~/.config/nvim/lua/mappings.lua<CR>')

-- end line with ;
n('<Leader>;', 'A;<Esc>')
i('<Leader>;', '<Esc>A;<Esc>')
n(';;', 'A;<Esc>')
i(';;', '<Esc>A;<Esc>')
n(',,', 'A,<Esc>')
i(',,', '<Esc>A,<Esc>')

-- go to end of line easier
n('<Leader><Leader>', 'A')
i('<Leader><Leader>', '<Esc>A')

-- move lines up/down
n('<C-A-j>', ':m .+1<CR>==')
n('<C-A-k>', ':m .-2<CR>==')
i('<C-A-j>', '<Esc>:m .+1<CR>==gi')
i('<C-A-k>', '<Esc>:m .-2<CR>==gi')
v('<C-A-j>', ":m '>+1<CR>gv=gv")
v('<C-A-k>', ":m '<-2<CR>gv=gv")

-- focus on one buffer
i('<A-o>', '<Esc><C-w><C-o>')
v('<A-o>', '<Esc><C-w><C-o>')
n('<A-o>', '<C-w><C-o>')

-- duplicate lines
n('<C-d>', '<S-v>yp')
v('<C-d>', '<S-v>y`]p')
i('<C-d>', '<Esc><S-v>yp')

-- exec node current file
n('<Leader>nn', ':!node %<CR>')

-- run cargo rust
n('<Leader>rr', ':!cargo run<CR>')

-- quick move in insert mode
i('<C-h>', '<Esc>ha')
i('<C-j>', '<Esc>ja')
i('<C-k>', '<Esc>ka')
i('<C-l>', '<Esc>la')

-- plugin mappings
-- fugitive
n('<Leader>gs', ':G<CR>')
n('<Leader>gf', ':diffget //2<CR>')
n('<Leader>gj', ':diffget //3<CR>')

-- nerdtree
n('<C-t>', ':NvimTreeFocus<CR>')
n('<C-t><C-f>', ':NvimTreeFindFile<CR>') -- focus current file on tree

-- telescope
n('<C-p>', ':Files<CR>')
n('<C-o>', ':Telescope find_files<CR>')
n('<C-f>', ':Telescope current_buffer_fuzzy_find<CR>')
n('<C-f><C-f>', ':Telescope live_grep<CR>')
n('<C-b>', ':Telescope buffers<CR>')
n('<C-p>', ":lua require'telescope'.extensions.repo.list{search_dirs = {'~/projects', '~/.config/nvim'}, file_ignore_patterns={'%.*nvim.*autoload.*'}}<CR>")

-- lsp
n('<silent>gd', ':Lspsaga preview_definition<CR>')
n('<silent>gD', ':lua vim.lsp.buf.declaration()<CR>')
n('<silent>gr', ':lua vim.lsp.buf.references()<CR>')
n('<silent>gi', ':lua vim.lsp.buf.implementation()<CR>')
n('<silent>K', ':Lspsaga hover_doc<CR>')
n('<silent><C-k>', ':lua vim.lsp.buf.signature_help()<CR>')
n('<silent>gh', ':Lspsaga lsp_finder<CR>')
n('<Leader>ca', ":lua vim.lsp.buf.code_action()<CR>")
n('<F2>', ':Lspsaga rename<CR>')

