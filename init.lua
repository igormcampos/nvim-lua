local r = function(file)
  package.loaded[file] = nil
  require(file)
end

r('plugins')
r('settings')
r('mappings')

r('packages.cmp')
r('packages.autopairs')
r('packages.nvim-tree')
r('packages.lsp')
r('packages.treesitter')
r('packages.sneak')

