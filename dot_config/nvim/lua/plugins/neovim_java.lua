return {
	"nvim-java/nvim-java",
  config = function ()
    require('java').setup()
    require('lsp-config').jdtls.setup({})
  end
}
