return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
		}

		-- dashboard.section.header.val = {
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⢤⠤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣻⠟⠛⠛⠳⣯⡓⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣞⡿⠋⠀⠀⠀⠀⠀⠻⣮⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⣀⢴⣿⣭⣭⣟⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⠁⠀⠀⠀⠀⡀⠀⠀⠘⢷⡹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⣰⣻⠟⠁⠀⠀⠈⠻⢦⡑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣞⡾⠁⠀⠀⠀⠀⢠⡿⠀⠠⠀⠈⢷⡹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⣸⣳⠏⠀⠀⠀⠀⠀⠀⠈⠹⣦⡓⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣞⣾⠁⠀⠀⠀⠀⢀⣿⠃⢀⠁⠠⡀⠈⣷⣹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢠⣯⡟⠀⠀⠀⣤⠀⠀⠀⠀⠀⠈⠻⣮⡣⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⣼⠃⠀⠀⠀⠀⠀⣼⡟⢀⠠⠐⠀⢡⠀⠘⣷⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⣼⣿⠃⠀⣴⠀⠹⣷⡀⠀⠀⠀⠀⠀⠈⢷⣜⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠏⠀⠀⠀⠀⠀⢰⣿⠀⠄⠂⠐⡈⠀⢃⠀⢹⣎⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⡟⣿⠀⠀⠏⠀⡀⠻⣷⡀⠀⠀⠀⠀⠀⠈⢻⣌⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣏⡿⠀⠀⠀⠀⠀⠀⣸⡟⠀⠰⠀⠂⠡⢀⠸⡀⠈⣿⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣟⡏⠀⣠⠂⠐⠀⡀⠙⣿⡄⠀⠀⠀⠀⠀⠀⠙⣧⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠃⠀⠀⠀⠀⠀⠀⣿⠇⡂⠁⠄⡁⠐⠠⠀⢡⠀⠸⣏⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣿⡇⠀⣟⠀⠠⠁⠀⠄⡈⢿⣆⠐⠀⠀⠀⠀⠀⠈⢿⡜⢦⣀⣤⢴⣖⣶⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣿⠀⡇⠈⡐⠀⠌⠐⠠⠘⡆⠀⢿⣼⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣿⡇⠀⡯⠀⢂⠠⠁⠠⠀⠌⢿⣆⠀⠀⠀⠀⠀⠀⣀⣿⣾⡿⠛⠋⠉⠉⢹⡄⠀⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⣠⣐⡀⠁⠌⠠⢁⠀⢣⠀⠸⣏⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣿⡇⠀⢃⠐⠀⠄⠠⠁⡐⠈⡈⣿⡆⠀⠀⢀⣴⠿⠛⠉⢸⡇⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⢟⠛⢻⡧⠐⠈⡐⠠⢀⠂⠆⠀⣿⣽⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣿⡇⠀⠀⠂⢈⠀⢂⠐⠀⢂⠐⢸⣧⠀⠀⠀⠀⠀⠐⠀⢸⡁⠀⠀⠀⠀⠈⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣧⣴⣤⡀⠂⢂⠀⡃⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠘⣿⡇⠀⠀⠡⠀⠂⠄⠂⢡⣾⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠋⠉⠉⣿⡇⠀⠡⠀⢸⠀⠈⣧⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⡿⣿⠀⠠⠁⠐⠠⠐⠠⡘⢿⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⢈⠐⠠⠈⠀⠀⣿⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⣿⣿⠀⠀⡃⢀⠂⠀⣿⡿⠛⠿⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡀⢀⠈⠄⠐⡀⠀⢼⡾⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢿⣿⡇⠀⡇⠀⡀⠂⢹⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠈⠳⣄⡀⠀⢀⣾⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠈⢿⡄⠢⠐⠠⠀⠀⢸⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢸⣿⣧⠀⠰⠀⠠⠐⠀⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠶⣾⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠘⢿⣄⠂⠐⠀⠀⣼⢧⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠈⣿⣿⠀⠘⠄⠐⠀⠌⢠⡿⠀⠀⠀⠀⣀⣤⣦⣶⣤⣴⠏⠀⣀⣤⣴⣶⣶⣶⣦⣤⡀⠀⠀⠙⢿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠜⣿⡀⠈⠀⢠⣿⣿⠁⢀⡀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠸⣿⣇⠀⠻⡀⠈⠀⣿⠃⠀⠀⢠⣾⣿⣿⡿⢿⣿⠏⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠉⢿⡛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠐⠘⣿⣀⣴⣿⣿⣿⣿⣿⣭⣟⢦⣀⣀⣀⠀⠀]],
		-- 	[[⠀⠀⠀⢻⣻⣆⠀⠱⣀⢩⣿⠀⠀⠀⠠⠟⠋⠁⠀⣰⠃⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⡟⠙⣿⣿⠁⠀⢹⣿⡿⠿⣯⡻⡆]],
		-- 	[[⠀⠀⠀⠈⢻⣻⣦⠀⠉⢸⡗⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠈⠛⠿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⣀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⡶⠀⣿⣿⡀⠐⠈⢁⠠⠀⣼⣇⡇]],
		-- 	[[⠀⠀⠀⠀⠀⠙⢽⡷⣦⣽⡇⠀⠀⠀⠀⠀⠀⠀⢰⡇⢀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠸⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣝⣿⡼⣿⣧⡐⠈⣠⣤⢾⣫⠟⠁]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠙⢻⣿⠇⠀⠀⠀⠀⠀⠀⠀⢸⠇⠘⣧⠀⠀⠀⠀⠀⢀⣾⣧⣄⣀⢀⣀⣠⣾⠋⠀⠀⠀⠀⠙⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣻⡇⠀⠘⢿⣿⣛⡿⠷⠋⠁⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⡾⣿⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠈⠳⣶⣤⡴⣾⢿⡹⢮⡝⣯⢻⣽⣿⣿⣄⠀⠀⠀⠀⠀⠀⠉⠓⠦⣤⣄⣀⣀⣠⣤⠿⢻⡞⣷⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⢀⣾⣷⣿⠀⠀⠀⠀⠀⣀⡴⠋⠀⠀⠀⠀⠀⠹⣷⡹⣎⢷⡹⢧⣻⣼⠿⣿⣄⠉⠙⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⢻⣽⣧⣤⣀⣀⣠⡴⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣯⣞⣭⣻⣟⣷⡀⢀⠛⢿⡄⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣶⣶⣶⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠈⢿⣿⡿⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠛⠻⣧⡈⠐⢈⣡⣾⠏⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣯⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠘⢿⣓⣶⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠛⠋⠁⠀⠀⠀⠀⠀⠀⠶⠛⠉⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣺⣿⣿⣻⢦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢿⣿⣧⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣾⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠛⣯⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣷⡿⠀⠘⠻⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠁⠀⢿⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡇⠀⠀⠖⠀⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⢶⠀⠀⢸⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠒⠒⠒⠖⠶⠦⠤⠤⢤⡤⣤⠤⣤⢤⡤⣤⢤⡤⠤⠤⠤⠴⠶⠒⠒⠒⠒⠊⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- }

		-- dashboard.section.header.val = {
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣧⡀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠛⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡟⠉⠉⢫⣿⣆⠀⠀⠀⠀⠀⠀⣿⠟⠀⢻⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠹⣿⣆⠀⠀⠀⡀⣸⡏⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠻⡻⣦⡀⠀⣿⣿⠁⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧⠀⠀⠀⠀⠰⣷⣜⢿⣾⣿⣿⣶⣤⣦⣤⣎⣻⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⣆⠀⠀⠀⠀⣿⣿⡀⠉⠻⣿⣿⣟⠺⢍⡙⠻⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡸⣤⡀⠀⠀⣿⣿⡇⠀⠀⠈⠫⡿⠀⠀⠙⢢⡀⢹⣷⡄⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠹⣧⠀⢠⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⢀⣀⢱⡀⢻⣿⣤⣀⡀⣠⣄⡀]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣄⠹⢷⣾⡇⠈⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡇⡇⠀⠈⠙⠛⠛⣿⣿⡇]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣾⣿⡌⠃⠀⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠈⢻⡇]],
		-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣿⣿⣻⡆⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠤⠶⢚⠁⠀⠀⠀⠀⠀⠀⠀⣠⣾⡇]],
		-- 	[[⠀⠀⠀⢠⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⣿⣷⣇⠀⠀⠀⠀⠀⣠⠚⠁⠀⠀⠀⠀⢿⣤⣀⣀⣀⣀⣠⣤⣾⠟⠁⠀]],
		-- 	[[⠀⠀⠀⣾⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡿⠛⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠈⠉⣛⢽⣿⡿⠛⠁⠀⠀⠀]],
		-- 	[[⠀⣠⣼⡿⠏⠛⠷⣦⣴⣦⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⠁⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⣿⠋⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢠⣿⢉⣤⣶⣾⠟⠋⠁⠀⠈⠉⠉⠙⠛⠿⠿⠶⠦⣤⣀⣀⣴⣶⣿⠏⠁⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣿⣧⠀⠀⠀⠀⠀⠀]],
		-- 	[[⢸⣿⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠁⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⣧⠀⠀⠀⠀⠀]],
		-- 	[[⠘⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡿⡆⠀⠀⠀⠀]],
		-- 	[[⢰⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢆⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⣿⠀⠀⠀⠀]],
		-- 	[[⢠⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⢷⠀⠀⠀⠀]],
		-- 	[[⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢶⡆⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⢾⠇⠀⠀⠀]],
		-- 	[[⠀⢹⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣃⡤⠤⣄⣀⣀⡀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠀⣀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢸⣿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠀⠀⠀⠀⠀⠙⣿⣄⠀⣼⠇⠀⠀⠀⠀⠀⠀⡞⠀⠀⠉⠀⠀⠀⠀⢀⣼⣿⢹⠃⠀⠀⠀⠀⠀]],
		-- 	[[⠀⣹⣿⡏⠀⠀⠀⠀⠀⠀⠀⣠⣰⣦⣿⣏⡀⠀⠀⠀⠀⠀⠀⠈⣿⣤⡟⠀⠀⠀⠀⠀⠀⣰⠋⠀⠀⣄⣀⡀⢀⣠⣾⣿⠛⠟⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⣿⡟⠁⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⣀⣀⣘⣃⣿⣿⡁⠀⠀⠀⠀⠀⣾⠿⠿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠘⣿⡇⠀⢠⣶⣿⠿⠟⠛⢿⡍⢀⣹⣿⣿⢻⠛⠛⠛⠛⠛⠻⠿⣿⡇⠀⠀⣀⡀⠀⣠⣿⠿⠟⠛⢛⣿⣿⡟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢹⣇⠀⠿⣽⡏⠀⠀⠀⢈⢿⡝⠛⠛⢻⣿⣦⠀⠀⠀⠀⢀⣾⣿⡣⠞⠉⠁⢙⣶⣿⣇⣀⡔⢋⣽⣿⡟⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⢸⡿⠚⠉⣿⣧⣀⡀⠀⠈⢿⣷⣿⣿⣷⡿⠿⠀⠀⠀⠀⠈⣹⡟⠀⠀⠀⢰⣿⣿⣿⠀⠀⠁⠈⠁⣿⣾⣶⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- 	[[⠀⠸⠿⢿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⢿⣿⣿⡷⠶⠿⠿⠻⠶⠿⠿⠷⠶⠶⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		-- }
		--
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("p", "  Projects", "<cmd>Telescope projects<CR>"),
			dashboard.button("f", "󰱽  Find file", ":Telescope find_files<CR>"),
			dashboard.button("w", "  Find word", ":Telescope live_grep<CR>"),
			dashboard.button("r", "󰦛  Restore session", ":SessionRestore<CR>"),
			dashboard.button("h", "󰙰  Find session", ":Telescope session-lens<CR>"),
			dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
			dashboard.button("q", "󰈆  Quit NVIM", ":qa<CR>"),
		}

		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.position = "center"
			button.opts.width = 45
		end

		-- dashboard.opts.layout[1].val = 10

		dashboard.opts.layout = {
			{ type = "padding", val = 10 },
			dashboard.section.header,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			{ type = "padding", val = 2 },
			dashboard.section.footer,
		}
		alpha.setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "\n\n⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}