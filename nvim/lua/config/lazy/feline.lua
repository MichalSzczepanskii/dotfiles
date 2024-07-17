return {
    'feline-nvim/feline.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('feline').setup()
    end,
    enabled = false,
}
