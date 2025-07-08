
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fp', builtin.builtin, { desc = 'Telescope pickers' })

vim.keymap.set('n', '<leader>flw', builtin.lsp_workspace_symbols, { desc = 'Workplace symbols' })
vim.keymap.set('n', '<leader>fls', builtin.lsp_document_symbols, { desc = 'Workplace symbols' })


-- vim.keymap.set('n', '<leader>fc', builtin.themes, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>ft", ":Telescope themes<CR>", {noremap = true, silent = true, desc = "Theme Switcher"})
vim.keymap.set('n', '<leader>flt', builtin.treesitter, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Telescope help tags' })

-- window keybind are in here lmao
local bindOpts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>w', ':split<CR>', bindOpts)
vim.keymap.set('n', '<leader>t', ':terminal<CR>', bindOpts)
vim.keymap.set('n', '<leader>a', ':vsplit<CR>', bindOpts)
vim.keymap.set('n', '<leader>q', ':close<CR>', bindOpts)

local fb_actions = require "telescope._extensions.file_browser.actions"

require('telescope').setup{
  defaults = {
    mappings = {
      i = {

        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
	find_files = {
		-- theme = 'get_ivy'
	}
	-- builtin.treesitter
  },
  extensions = {
    file_browser = {
	  dir_icon = "",
      -- theme = "",
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<A-c>"] = fb_actions.create,
          ["<S-CR>"] = fb_actions.create_from_prompt,
          ["<A-r>"] = fb_actions.rename,
          ["<A-m>"] = fb_actions.move,
          ["<A-y>"] = fb_actions.copy,
          ["<A-d>"] = fb_actions.remove,
          ["<C-o>"] = fb_actions.open,
          ["<C-g>"] = fb_actions.goto_parent_dir,
          ["<C-e>"] = fb_actions.goto_home_dir,
          ["<C-w>"] = fb_actions.goto_cwd,
          ["<C-t>"] = fb_actions.change_cwd,
          ["<C-f>"] = fb_actions.toggle_browser,
          ["<C-h>"] = fb_actions.toggle_hidden,
          ["<C-s>"] = fb_actions.toggle_all,
          ["<bs>"] = fb_actions.backspace,
        },
        ["n"] = {
          ["c"] = fb_actions.create,
          ["r"] = fb_actions.rename,
          ["m"] = fb_actions.move,
          ["y"] = fb_actions.copy,
          ["d"] = fb_actions.remove,
          ["o"] = fb_actions.open,
          ["g"] = fb_actions.goto_parent_dir,
          ["e"] = fb_actions.goto_home_dir,
          ["w"] = fb_actions.goto_cwd,
          ["t"] = fb_actions.change_cwd,
          ["f"] = fb_actions.toggle_browser,
          ["h"] = fb_actions.toggle_hidden,
          ["s"] = fb_actions.toggle_all,
        }
      },
    },

	fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
	                                -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('themes')
require('telescope').load_extension('fzf')
require("telescope").load_extension("file_browser")

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

