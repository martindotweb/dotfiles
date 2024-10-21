require('impatient')
--require('bufferline').setup()

--local custom_theme = require'lualine.themes.ayu_dark'

-- Change the background of lualine_c section for normal mode
--custom_theme.normal.c.bg = '#090A12'

--require('lualine').setup {
--  options = {
--    icons_enabled = true,
--    theme = custom_theme,
--    component_separators = { left = '', right = ''},
--    section_separators = { left = '', right = ''},
--    disabled_filetypes = {
--      statusline = {},
--      winbar = {},
--    },
--    ignore_focus = {},
--    always_divide_middle = true,
--    globalstatus = false,
--    refresh = {
--      statusline = 1000,
--      tabline = 1000,
--      winbar = 1000,
--    }
--  },
--  sections = {
--    lualine_a = {'mode'},
--    lualine_b = {'branch', 'diff', 'diagnostics'},
--    lualine_c = {'filename'},
--    lualine_x = {'encoding', 'fileformat', 'filetype'},
--    lualine_y = {'progress'},
--    lualine_z = {'location'}
--  },
--  inactive_sections = {
--    lualine_a = {},
--    lualine_b = {},
--    lualine_c = {'filename'},
--    lualine_x = {'location'},
--    lualine_y = {},
--    lualine_z = {}
--  },
--  tabline = {},
--  winbar = {},
--  inactive_winbar = {},
--  extensions = {}
--}
--
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
        diagnostics = true,
      }
    }
  },
  filters = {
    dotfiles = false,
  },
   git = {
    enable = true,
    ignore = false,
  },
})

require("colorizer").setup()

_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}

require("nvterm").setup()

local terminal = require("nvterm.terminal")

local ft_cmds = {

}
local toggle_modes = {'n', 't'}
local mappings = {
  { 'n', '<C-l>', function () terminal.send(ft_cmds[vim.bo.filetype]) end },
  { toggle_modes, '<C-g>', function () terminal.toggle('horizontal') end },
  { toggle_modes, '<C-v>', function () terminal.toggle('vertical') end },
--  { toggle_modes, '<C-i>', function () terminal.toggle('float') end },
}
local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
