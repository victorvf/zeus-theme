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

| | Color | Hex | Used for |
| --- | --- | --- | --- |
| <img src="assets/palette/bg.svg" width="20"> | bg | `#FAF8F5` | Cream background |
| <img src="assets/palette/bg_alt.svg" width="20"> | bg_alt | `#F2F0ED` | Floating windows |
| <img src="assets/palette/fg.svg" width="20"> | fg | `#4A4458` | Main text |
| <img src="assets/palette/fg_comment.svg" width="20"> | fg_comment | `#9590A0` | Comments |
| <img src="assets/palette/pink.svg" width="20"> | pink | `#D64D7A` | Keywords |
| <img src="assets/palette/purple.svg" width="20"> | purple | `#8B6DC4` | Decorators |
| <img src="assets/palette/blue.svg" width="20"> | blue | `#4A7FCC` | Function definitions |
| <img src="assets/palette/blue_light.svg" width="20"> | blue_light | `#5BA3D9` | Parameters |
| <img src="assets/palette/cyan.svg" width="20"> | cyan | `#2A9D9D` | Classes and types |
| <img src="assets/palette/green.svg" width="20"> | green | `#50A050` | Strings |
| <img src="assets/palette/yellow.svg" width="20"> | yellow | `#C99520` | Constants and numbers |
| <img src="assets/palette/orange.svg" width="20"> | orange | `#D97030` | Function calls |
| <img src="assets/palette/red.svg" width="20"> | red | `#C94A4A` | Errors, `self` |
| <img src="assets/palette/coral.svg" width="20"> | coral | `#D96060` | Attributes and properties |

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
