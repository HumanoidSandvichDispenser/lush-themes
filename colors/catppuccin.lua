vim.g.colors_name = "catppuccin"

package.loaded["catppuccin"] = nil
require("lush")(require("catppuccin"))
