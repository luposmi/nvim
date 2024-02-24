return{
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre","BufNewFile"},
    build = ":TSUpdate",
    dependencies = {"nvim-treesitter/nvim-treesitter-context",
        "nvim-treesitter/nvim-treesitter-textobjects"},
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "asm","awk","bash","bibtex","c","clojure","cmake","commonlisp","cpp","css","csv","dart","diff","devicetree","diff","disassembly","dockerfile","eex","elixir","gdscript","git_config","git_rebase","gitattributes","gitcommit","gitignore","go","godot_resource", "haskell","hlsplaylist","html","http","java","javascript","json","latex","linkerscript","llvm","lua","markdown","matlab","meson","ninja","nix","ocaml","printf",
            "properties", -- java
            "python","regex","rust","scss","sql",
            "tablegen", -- llvm
            "toml","typescript","verilog","vim","vimdoc","xml","yaml","zig"
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true },
          incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                }
            }
        })
    end
},{
  "nvim-treesitter/nvim-treesitter-context",
  config = function()
    require("treesitter-context").setup()
  end
}
