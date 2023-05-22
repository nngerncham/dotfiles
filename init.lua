-- sets leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- loading plugins
require "plugins.plugins"

-- loading configs
require "global.config"
require "global.remaps"
