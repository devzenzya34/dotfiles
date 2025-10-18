-- LazyVim extras configuration
return {
  -- Import LazyVim extras for various language packs and tools
  -- These provide pre-configured language servers, formatters, and linters
  
  -- Python support
  { import = "lazyvim.plugins.extras.lang.python" },
  
  -- YAML support  
  { import = "lazyvim.plugins.extras.lang.yaml" },
  
  -- Note: Terraform and Ansible extras may not exist in all LazyVim versions
  -- { import = "lazyvim.plugins.extras.lang.terraform" },
  -- { import = "lazyvim.plugins.extras.lang.ansible" },
  
  -- Docker support
  { import = "lazyvim.plugins.extras.lang.docker" },
  
  -- Additional useful extras (removing non-existent modules)
  { import = "lazyvim.plugins.extras.coding.luasnip" },
  { import = "lazyvim.plugins.extras.util.project" },
  

}