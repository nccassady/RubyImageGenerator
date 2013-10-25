# This is the file I compile using Ocra for my Example.exe

# Run the main file
require_relative 'createImage'

# Runs each single-line function, the horizontal and vertical lines get a random position each time
def create_sample_image(png)
	draw_vertical_line(png, 'red', rand(png.width))
	draw_horizontal_line(png, 'black', rand(png.height))
	draw_diagonal_from_top_left(png, 'blue')
	draw_diagonal_from_top_right(png, 'green')
end

# Create 5 png's of different sizes
png1 = create_image(100, 100)
png2 = create_image(200, 100)
png3 = create_image(200, 200)
png4 = create_image(100, 200)
png5 = create_image(300, 300)

# 4 sample images and a checkerboard
create_sample_image(png1)
create_sample_image(png2)
create_sample_image(png3)
create_sample_image(png4)
draw_checkerboard(png5, 'red', 'blue')

# Save the images
save_image(png1, 'Test 1.png')
save_image(png2, 'Test 2.png')
save_image(png3, 'Test 3.png')
save_image(png4, 'Test 4.png')
save_image(png5, 'Checkerboard.png')