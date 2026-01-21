-- source /opt/.vimrc
--
--
local vim = vim
local Plug = vim.fn['plug#']

vim.wo.number = true
vim.wo.relativenumber = true


vim.call('plug#begin')

Plug('dracula/vim', { ['as'] = 'dracula' })
Plug 'ellisonleao/gruvbox.nvim'

vim.call('plug#end')


vim.api.nvim_create_autocmd({'UIEnter'}, {
    callback = function(event)
        local client = vim.api.nvim_get_chan_info(vim.v.event.chan).client
        if client ~= nil and client.name == "Firenvim" then
            vim.o.laststatus = 0
        end
    end
})
vim.g.firenvim_config = {
    localSettings = {
        ["https://mattermost.office.glarotech.ch:4444"] = { takeover = 'never', priority = 1 },
        ["https://.*google..*"] = { takeover = 'never', priority = 1 },
        ["https://trello.com/.*"] = { takeover = 'never', priority = 1 },
        ["https://deepl.com/.*"] = { takeover = 'never', priority = 1 },
        ["https://.*.deepl.com/.*"] = { takeover = 'never', priority = 1 },
        ["https://intraerp.office.glarotech.ch/.*"] = { takeover = 'never', priority = 1 },
    }
}

vim.o.background = "dark"
vim.cmd('luafile ~/.config/nvim/theme.lua')


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


