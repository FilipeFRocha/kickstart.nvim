return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Header (previous ASCII banner)
      dashboard.section.header.val = {
        ' _______  _______  _        _______    _______  _______  _______  _          _______ _________          _______  _______ ',
        '(       )(  ___  )| \\    /\\(  ____ \\  (  ____ \\(  ___  )(  ___  )( \\        (  ____ \\\\__   __/|\\     /|(  ____ \\(  ____ \\',
        '| () () || (   ) ||  \\  / /| (    \\/  | (    \\/| (   ) || (   ) || (        | (    \\/   ) (   | )   ( || (    \\/| (    \\/',
        '| || || || (___) ||  (_/ / | (__      | |      | |   | || |   | || |        | (_____    | |   | |   | || (__    | (__    ',
        '| |(_)| ||  ___  ||   _ (  |  __)     | |      | |   | || |   | || |        (_____  )   | |   | |   | ||  __)   |  __)   ',
        '| |   | || (   ) ||  ( \\ \\ | (        | |      | |   | || |   | || |              ) |   | |   | |   | || (      | (      ',
        '| )   ( || )   ( ||  /  \\ \\| (____/\\  | (____/\\| (___) || (___) || (____/\\  /\\____) |   | |   | (___) || )      | )      ',
        '|/     \\||/     \\||_/    \\/(_______/  (_______/(_______)(_______)(_______/  \\_______)   )_(   (_______)|/       |/        ',
      }

      -- Header highlight
      vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#FF6C6B', bold = true })
      dashboard.section.header.opts.hl = 'AlphaHeader'

      -- Add vertical space between header and footer
      local header_padding = 5
      for _ = 1, header_padding do
        table.insert(dashboard.section.header.val, '')
      end

      -- Menu buttons
      dashboard.section.buttons.val = {
        dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
        dashboard.button('p', '  Projects', ':Telescope projects<CR>'),
        dashboard.button('l', '󰒲  Lazy', ':Lazy<CR>'),
        dashboard.button('r', '  Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('q', '  Quit', ':qa<CR>'),
      }

      -- Buttons highlight
      vim.api.nvim_set_hl(0, 'AlphaButton', { fg = '#C678DD', bold = true })
      dashboard.section.buttons.opts.hl = 'AlphaButton'

      -- Footer (ASCII block)
      dashboard.section.footer.val = {
        'ＦｉｌｉｐｅＦＲｏｃｈａ',
      }

      -- Footer highlight
      vim.api.nvim_set_hl(0, 'AlphaFooter', { fg = '#56B6C2', italic = true, bold = true })
      dashboard.section.footer.opts.hl = 'AlphaFooter'

      -- Add vertical space between header and footer
      local footer_padding = 5
      for _ = 1, footer_padding do
        table.insert(dashboard.section.footer.val, 1, '')
      end

      -- Setup alpha
      alpha.setup(dashboard.opts)
    end,
  },
}
