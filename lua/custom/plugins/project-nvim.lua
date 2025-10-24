return {
  'ahmedkhalf/project.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  event = 'VimEnter',
  config = function()
    require('project_nvim').setup {
      detection_methods = { 'pattern', 'lsp' },
      patterns = { '.git', 'Makefile', 'package.json', 'init.lua' },
    }
    require('telescope').load_extension 'projects'
  end,
}
