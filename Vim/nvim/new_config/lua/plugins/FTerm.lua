-- floating terminal
return {
   "numToStr/FTerm.nvim",
   opts = {
       border = 'single',
       dimensions  = {
           height = 0.7,
           width = 0.7,
       },
      blend = 23,
   },
   -- Optional dependencies
   dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
   },
}
