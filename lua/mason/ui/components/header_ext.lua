local M = {}
local settings = require "mason.settings"

function M.has_visible_border()
    local border = settings.current.ui.border
    if border == nil then
        if vim.fn.exists "&winborder" == 1 then
            border = vim.o.winborder
        else
            return false
        end
    end
    return border ~= "none" and border ~= ""
end

return M
