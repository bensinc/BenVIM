require'nvim-tree'.setup {
	git = {
		ignore = true
	},
	actions = {
		open_file = {
			resize_window = true,
			quit_on_open = true,
			window_picker = {
				enable = false,
			}
		}
	},
	renderer = {
		highlight_opened_files = 'all',
		add_trailing = true,
		group_empty = true,
		highlight_git = false,
		indent_markers = {
			enable = true
		},
		icons = {
			padding = ' ',
			symlink_arrow = ' >> ',
			show = {
			}
		}
	},
	respect_buf_cwd = true,
	create_in_closed_folder = false,
	-- tree_refresh_wait = 500,
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {'dashboard'},
    open_on_tab = false,
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {enable = true, update_cwd = true, ignore_list = {}},
    system_open = {
        -- the command to run this, leaving nil should work in most cases
        cmd = nil,
        -- the command arguments as a list
        args = {}
    },

    view = {width = 50, side = 'left', mappings = {custom_only = false, list = {}}}
}
