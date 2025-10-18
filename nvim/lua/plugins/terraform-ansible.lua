-- Manual configuration for Terraform and Ansible support
-- Since LazyVim extras for these might not exist
return {
  -- Terraform support
  {
    "hashivim/vim-terraform",
    ft = { "terraform", "hcl" },
    config = function()
      vim.g.terraform_align = 1
      vim.g.terraform_fmt_on_save = 1
    end,
  },

  -- LSP configuration for Terraform
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = {
          filetypes = { "terraform", "hcl" },
        },
        tflint = {},
      },
    },
  },

  -- Ansible support
  {
    "pearofducks/ansible-vim",
    ft = { "yaml.ansible", "ansible" },
    config = function()
      vim.g.ansible_unindent_after_newline = 1
      vim.g.ansible_yamlKeyName = "yamlKey"
      vim.g.ansible_attribute_highlight = "ob"
      vim.g.ansible_name_highlight = "b"
      vim.g.ansible_extra_keywords_highlight = 1
    end,
  },

  -- Mason ensure installation
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "terraform-ls",
        "tflint",
        "ansible-language-server",
      })
    end,
  },

  -- Treesitter support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "terraform",
        "hcl",
      })
    end,
  },
}