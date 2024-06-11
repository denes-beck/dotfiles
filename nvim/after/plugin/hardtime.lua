local ok, hardtime = pcall(require, "hardtime")
if not ok then
	return
end

---@diagnostic disable-next-line: undefined-global
local vim = vim
local keymap = vim.keymap
local opts = {}
local notify = vim.notify
local log = vim.log

hardtime.setup({})

local report = require("hardtime.report")
local plugin = "hardtime"

keymap.set("n", "<leader>htt", function()
	hardtime.toggle()
	notify("Hardtime " .. (hardtime.is_enabled and "enabled" or "disabled"), log.levels.INFO, { title = plugin })
end, opts)
keymap.set("n", "<leader>hte", function()
	hardtime.enable()
	notify("Hardtime enabled", log.levels.INFO, { title = plugin })
end, opts)
keymap.set("n", "<leader>htd", function()
	hardtime.disable()
	notify("Hardtime disabled", log.levels.INFO, { title = plugin })
end, opts)
keymap.set("n", "<leader>htr", function()
	report.report()
end, opts)
