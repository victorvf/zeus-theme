# zeus.nvim

A soft, light colorscheme for Neovim with a cream (off-white) background and syntax colors designed for long reading sessions without eye strain.

## Requirements

- Neovim >= 0.8
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "victorvf/zeus-theme",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("zeus")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "victorvf/zeus-theme",
  config = function()
    vim.cmd.colorscheme("zeus")
  end,
})
```

### vim-plug

```vim
Plug 'victorvf/zeus-theme'
" ...
colorscheme zeus
```

### Manual

Copy `colors/zeus.lua` to `~/.config/nvim/colors/` and run:

```vim
:colorscheme zeus
```

## Usage

```lua
vim.opt.termguicolors = true
vim.cmd.colorscheme("zeus")
```

## Palette

| Color | Hex | Used for |
| --- | --- | --- |
| bg | `#FAF8F5` | Cream background |
| bg_alt | `#F2F0ED` | Floating windows |
| fg | `#4A4458` | Main text |
| fg_comment | `#9590A0` | Comments |
| pink | `#D64D7A` | Keywords |
| purple | `#8B6DC4` | Decorators |
| blue | `#4A7FCC` | Function definitions |
| blue_light | `#5BA3D9` | Parameters |
| cyan | `#2A9D9D` | Classes and types |
| green | `#50A050` | Strings |
| yellow | `#C99520` | Constants and numbers |
| orange | `#D97030` | Function calls |
| red | `#C94A4A` | Errors, `self` |
| coral | `#D96060` | Attributes and properties |

## Plugin support

- Treesitter and LSP semantic tokens
- LSP diagnostics
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) / [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) / vim-gitgutter
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [rainbow-delimiters.nvim](https://gitlab.com/HiPhish-Group/rainbow-delimiters.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)

## License

[MIT](LICENSE)
