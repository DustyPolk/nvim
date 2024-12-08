-- Basic Settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.syntax = 'on'        -- Enable syntax highlighting
vim.opt.termguicolors = true -- Enable true colors support

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Move to right window' })

-- Window management
vim.keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })
vim.keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'Close current split' })

-- Tab management
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open new tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to next tab' })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to previous tab' })

-- File explorer
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })

-- Buffer navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })

-- Clear search highlights
vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- Save and quit shortcuts
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', { desc = 'Quit all without saving' })

-- Move lines up and down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })

-- Keep cursor centered when searching
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })

-- Better indenting
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and keep selection' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and keep selection' })

-- Load plugin configurations
require('plugins')
require('treesitter')
require('lsp')
require('tree')

-- Set colorscheme
vim.cmd[[colorscheme tokyonight]]
