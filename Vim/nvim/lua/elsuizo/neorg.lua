-- Neorg configuration
require('neorg').setup {
   load = {
       ["core.defaults"] = {}, -- Loads default behaviour
       ["core.concealer"] = {}, -- Adds pretty icons to your documents
       ["core.dirman"] = { -- Manages Neorg workspaces
         config = {
            workspaces = {
               todos = "~/Dropbox/TODOs",
               remember = "~/Dropbox/Remember",
            },
         },
      },
   ["core.keybinds"] = {
       -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
       config = {
         default_keybinds = true,
            neorg_leader = "<Space>",
       },
      },
   }
}
