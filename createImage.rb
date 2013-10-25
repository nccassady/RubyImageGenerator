require "chunky_png"

def create_image(width, height, background = ChunkyPNG::Color::TRANSPARENT)
	png = ChunkyPNG::Image.new(width, height, background)
end

def save_image(png, filename, interlace = true)
	png.save(filename, :interlace => interlace)
end

def draw_vertical_line(png, color, xPosition = 0)
	(0...png.height).each do |yPosition|
		png[xPosition, yPosition] = ChunkyPNG::Color(color)
	end
end

def draw_horizontal_line(png, color, yPosition = 0)
	(0...png.width).each do |xPosition|
		png[xPosition, yPosition] = ChunkyPNG::Color(color)
	end
end

def draw_diagonal_from_top_left(png, color)
	png.polygon([0, 0, png.width, png.height], color)
end

def draw_diagonal_from_top_right(png, color)
	png.polygon([png.width, 0, 0, png.height], color)
end

