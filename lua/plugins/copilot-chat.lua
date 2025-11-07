return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      model = 'claude-sonnet-3.5', -- AI model to use
      temperature = 0.1, -- Lower = focused, higher = creative
      window = {
        layout = 'float', -- 'vertical', 'horizontal', 'float'
        width = 0.5, -- 50% of screen width
        border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
        title = '🤖 AI Assistant',
        zindex = 100, -- Ensure window stays on top
      },
      headers = {
        user = '👤 Jamesco',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },
      separator = '━━',
      auto_insert_mode = true, -- Enter insert mode when opening
    },
  },
}
