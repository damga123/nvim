require("config.remap")
require("config.set")
require('leap').add_default_mappings()
require('lualine').setup()
vim.g.copilot_assume_mapped = true
