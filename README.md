# Neovim Configuration

A modern Neovim configuration with LSP support, syntax highlighting, file explorer, and sensible defaults.

## Prerequisites

- Neovim >= 0.8.0
- Git
- A C compiler (gcc, clang, etc.) for Treesitter
- [ripgrep](https://github.com/BurntSushi/ripgrep) for live grep
- A [Nerd Font](https://www.nerdfonts.com/) for icons (optional but recommended)
- Node.js (for LSP servers)
- Python 3 (for Python LSP)
- Rust (for Rust LSP)

## Installation

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

3. Start Neovim:
```bash
nvim
```

4. Install plugins:
```
:PackerSync
```

5. Restart Neovim and wait for Treesitter to install parsers.

## Features

### Plugin Management
- Uses [packer.nvim](https://github.com/wbthomason/packer.nvim) for plugin management

### LSP Support
- Built-in LSP configuration for:
  - Lua
  - Python
  - Rust
- Autocompletion with nvim-cmp
- Automatic LSP server installation with Mason
- LSP status updates with fidget.nvim

### File Navigation
- NvimTree file explorer
- Syntax highlighting with Treesitter
- File icons with nvim-web-devicons

### Key Bindings

Space is used as the leader key. Here are some important keybindings:

#### General
- `<space>w` - Save file
- `<space>q` - Quit
- `<space>Q` - Force quit all
- `<space>nh` - Clear search highlights

#### Windows
- `<space>sv` - Split window vertically
- `<space>sh` - Split window horizontally
- `<space>se` - Make splits equal size
- `<space>sx` - Close current split

#### Navigation
- `<space>h/j/k/l` - Navigate between windows
- `<space>e` - Toggle file explorer

#### Tabs
- `<space>to` - Open new tab
- `<space>tx` - Close current tab
- `<space>tn` - Next tab
- `<space>tp` - Previous tab

#### Buffers
- `<space>bn` - Next buffer
- `<space>bp` - Previous buffer
- `<space>bd` - Delete buffer

#### Code
- `gd` - Go to definition
- `K` - Hover documentation
- `<space>rn` - Rename symbol
- `<space>ca` - Code actions
- `<space>f` - Format code

## File Structure
```
~/.config/nvim/
├── init.lua              # Main configuration file
├── lua/
│   ├── plugins.lua      # Plugin definitions
│   ├── lsp.lua         # LSP configuration
│   ├── treesitter.lua  # Treesitter settings
│   └── tree.lua        # NvimTree configuration
└── README.md
```

## Customization

### Adding LSP Servers
1. Open Neovim
2. Run `:Mason`
3. Find your desired LSP server
4. Press `i` to install

### Adding New Plugins
1. Add the plugin to `lua/plugins.lua`
2. Run `:PackerSync`
3. Create a configuration file in `lua/` if needed
4. Require the configuration in `init.lua`

## Troubleshooting

### Plugin Installation Failed
```bash
rm -rf ~/.local/share/nvim/site/pack/packer/
nvim +PackerSync
```

### LSP Not Working
1. Check if the LSP server is installed:
```
:Mason
```
2. Install any missing servers
3. Restart Neovim

### Icons Not Showing
Make sure you have a Nerd Font installed and configured in your terminal emulator.

## Contributing

Feel free to submit issues and enhancement requests! 