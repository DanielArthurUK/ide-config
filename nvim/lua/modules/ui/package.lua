local package = require('core.pack').package
local conf = require('modules.ui.config')

package({
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = conf.dashboard,
  dependencies = {{ 'nvim-tree/nvim-web-devicons' }}
})

package({ 'EdenEast/nightfox.nvim', config = conf.nightfox })

package({
  'freddiehaddad/feline.nvim',
  config = function()
    require('modules.ui.feline')
  end
})

package({
    'folke/trouble.nvim',
    config = function()
        require('trouble').setup{}
    end
})

package({
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim'
  },
})

package({
    'norcalli/nvim-colorizer.lua',
    config = function ()
        require('colorizer').setup{}
    end
})

package({
  'akinsho/nvim-bufferline.lua',
  config = conf.nvim_bufferline,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({'famiu/bufdelete.nvim'})
