class Image

	def initialize (pictures)
	 	@pictures = pictures
	end

	def output_image
	 	@pictures.each do |array|
	 		puts array.join
		end
  	end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image