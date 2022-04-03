local status_ok, colorizer = pcall(require, "colorizer")
if status_ok then
	return
end

colorizer.setup()
