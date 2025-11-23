-- Require the floating_terminal logic
require('FloaTerm.floating_terminal')

-- Default plugin configuration, can be overridden by the user
local opts = {
  width = 0.8,
  height = 0.8,
  row = 0.1,
  col = 0.1,
  border = "rounded",
}

-- Apply user configuration
local function apply_config(user_opts)
  opts = vim.tbl_deep_extend("force", opts, user_opts or {})
end

-- Expose configuration function for user to call if needed
return {
  apply_config = apply_config,
}
