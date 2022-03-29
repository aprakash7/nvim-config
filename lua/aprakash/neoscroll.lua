local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end

    neoscroll.setup {
	mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
	hide_cursor = true,          -- Hide cursor while scrolling
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
	easing_function = nil,       -- Default easing function
	pre_hook = nil,              -- Function to run before the scrolling animation starts
	post_hook = nil,             -- Function to run after the scrolling animation ends
	performance_mode = false,    -- Disable "Performance Mode" on all buffers.

    }
