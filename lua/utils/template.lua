local M = {}

function M.insert_cpp_template()
  local path = vim.fn.stdpath("config") .. "/templates/cpp.cpp"
  local lines = vim.fn.readfile(path)
  vim.api.nvim_put(lines, "l", true, true)
end

return M
