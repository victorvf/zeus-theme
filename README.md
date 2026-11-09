# zeus.nvim

Um colorscheme claro e suave para Neovim, com fundo creme (off-white) e cores de sintaxe pensadas para longas sessões de leitura sem cansar a vista.

## Requisitos

- Neovim >= 0.8
- `termguicolors` habilitado

## Instalação

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

Copie `colors/zeus.lua` para `~/.config/nvim/colors/` e rode:

```vim
:colorscheme zeus
```

## Uso

```lua
vim.opt.termguicolors = true
vim.cmd.colorscheme("zeus")
```

## Paleta

| Cor | Hex | Uso |
| --- | --- | --- |
| bg | `#FAF8F5` | Fundo creme |
| bg_alt | `#F2F0ED` | Janelas flutuantes |
| fg | `#4A4458` | Texto principal |
| fg_comment | `#9590A0` | Comentários |
| pink | `#D64D7A` | Keywords |
| purple | `#8B6DC4` | Decorators |
| blue | `#4A7FCC` | Definição de funções |
| blue_light | `#5BA3D9` | Parâmetros |
| cyan | `#2A9D9D` | Classes e tipos |
| green | `#50A050` | Strings |
| yellow | `#C99520` | Constantes e números |
| orange | `#D97030` | Chamadas de função |
| red | `#C94A4A` | Erros, `self` |
| coral | `#D96060` | Atributos e properties |

## Suporte a plugins

- Treesitter e LSP semantic tokens
- Diagnósticos do LSP
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

## Licença

[MIT](LICENSE)
