return {
  'MunifTanjim/exrc.nvim',
  config = function()
    require('exrc').setup({
      files = {
        ".nvimrc",
        ".nvimrc.lua",
      },
    })
  end,
}
