-- tree folder visualization
return {
   'nvim-tree/nvim-tree.lua',
   requires = {
      'nvim-tree/nvim-web-devicons',
   },
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}
