

require('bufferline').setup {
	options = {
		offsets = {{filetype = "NvimTree", text = "[Files]", highlight = "Directory", text_align = "left"}},
		middle_mouse_command = "bdelete! %d",
		separator_style = "thin" 
	}
}


