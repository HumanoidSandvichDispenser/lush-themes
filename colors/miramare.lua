vim.opt.background = "dark"
vim.g.colors_name = "miramare"

package.loaded["miramare"] = nil
require("lush")(require("miramare"))
