class Image

	def initialize (pictures)
	 @pictures = pictures
	end

	def output_image
	 	@pictures.each do |array|
	 		puts array.join
		end
  	end

  	def blur!(distance=1)
  	  	distance.times do
  	 	 	blur_coords!
  	 	end
	end

private 

	def blur_coords!
		blur_coords = []
		@pictures.each_with_index do |array, i|
			array.each_with_index do |x, array_i|
				blur_coords << [i, array_i] if x == 1
			end
		end

		blur_coords.each do |coord|
			@pictures[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @pictures[coord[0]].length - 1
			@pictures[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
			@pictures[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @pictures.length - 1
			@pictures[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
		end
	end

end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur!(1)
image.output_image