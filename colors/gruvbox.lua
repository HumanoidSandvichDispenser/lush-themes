vim.opt.background = "dark"
vim.g.colors_name = "gruvbox"

package.loaded["gruvbox"] = nil
require("lush")(require("gruvbox"))
