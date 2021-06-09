" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/elsuizo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/elsuizo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/elsuizo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/elsuizo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/elsuizo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/csv.vim"
  },
  iosvkem = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/iosvkem"
  },
  ["julia-vim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/julia-vim"
  },
  monosvkem = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/monosvkem"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/neosnippet-snippets"
  },
  ["neosnippet.vim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/neosnippet.vim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  tagbar = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  tcomment_vim = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/tcomment_vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-colors-paramount-suizo"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-colors-paramount-suizo"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-racer"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-racer"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-clipboard"] = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vim-tmux-clipboard"
  },
  vimtex = {
    loaded = true,
    path = "/home/elsuizo/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
