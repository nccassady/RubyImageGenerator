# Uses the chunky_ong library
require "chunky_png"

# Create a PNG object by dimension and background color, Transparent by default
def create_image(width, height, background = ChunkyPNG::Color::TRANSPARENT)
	png = ChunkyPNG::Image.new(width, height, background)
end

# Save the image
def save_image(png, filename, interlace = true)
	png.save(filename, :interlace => interlace)
end

# Draw a vertical line of user-given color on a PNG at user-given position
def draw_vertical_line(png, color, xPosition = 0)
	png.polygon([xPosition, 0, xPosition, png.height], color)
end

# Draw a horizontal line of user-given color on a PNG at user-given position
def draw_horizontal_line(png, color, yPosition = 0)
	png.polygon([0, yPosition, png.width, yPosition], color)
end

# Currently draws a diagonal line from one corner to the other
# In future updates this will be a diagonal line with a user-given start position and direction
def draw_diagonal_from_top_left(png, color)
	png.polygon([0, 0, png.width, png.height], color)
end

def draw_diagonal_from_top_right(png, color)
	png.polygon([png.width, 0, 0, png.height], color)
end

# Draws a checkerboard with user-defined horizontal color, vertical color, and space between lines(default 5)
def draw_checkerboard(png, horizontalColor, verticalColor, spaceWidth = 5)
	(0...png.width).step(spaceWidth).each do |x|
		draw_vertical_line(png, verticalColor, x)
	end

	(0...png.height).step(spaceWidth).each do |y|
		draw_horizontal_line(png, horizontalColor, y)
	end
end