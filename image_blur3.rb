# Build a class that allows us to build a new image with the data we specify. 
# Make it possible for the class to output the image to the screen. 

# image blur #1
class Image
  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do | row |
      row.each do | cell |
          print cell
      end
      puts
    end
  end

  # builds a new image that blurs - image blur #2
  # find which cells already have ones, not zero
  def blur(distance)
    ones = []
    @image.each_with_index do | row_data, row_index |
      row_data.each_with_index do | cell_data, col_index |
        if cell_data == 1
          ones.push([row_index, col_index])
        end
      end
    end
    ones.each do |list|
      row_index, col_index = list
      transform(row_index, col_index, distance)
    end
  end

  # transform 0 cells to 1 if above, below or on the side of existing 1
  def transform(row_index, col_index, distance)
    ((row_index - distance)..(row_index + distance)).each do |row_number| 
      ((col_index - distance)..(col_index + distance)).each do |cell_number|
        next unless is_valid_cell?(row_number, cell_number)

        mdist = manhattan_distance(row_index, col_index, row_number, cell_number)
        if mdist <= distance
          @image[row_number][cell_number] = 1 
        end
      end
    end
  end

  def is_valid_cell?(row, cell)
    row >= 0 && row < @image.size && cell >= 0 && cell < @image[row].size
  end

  def manhattan_distance(source_row, source_cell, dest_row, dest_cell)
    (dest_row - source_row).abs + (dest_cell - source_cell).abs
  end
end 


img = Image.new([
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 1, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0],
])

img.output_image
img.blur(2)
puts ''
img.output_image


#Easy way below...using the 'blurred' method

# class Image
#   def initialize(image)
#     @image = image
#   end

#   def output_image
#     @image.each do | row |
#       row.each do | cell |
#           print cell
#       end
#       puts
#     end
#   end

#   # builds a new image that blurs 
#   # find which cells already have ones, not zero
#   def blur 
#     ones = []
#     @image.each_with_index do | row, row_index |
#       row.each_with_index do | cell, cell_index |
#         if cell == 1
#           ones.push([row_index, cell_index])
#         end
#       end
#     end
#     ones.each do | list |
#       row_index, cell_index = list
#       transform(row_index, cell_index)
#     end
#   end

#   # transform 0 cells to 1 if above, below or on the side of existing 1
#   def transform(row_index, cell_index)
#     @image[row_index + 1][cell_index] = 1 if row_index < @image.length - 1
#     @image[row_index - 1][cell_index] = 1 if row_index > 0
#     @image[row_index][cell_index - 1] = 1 if cell_index > 0
#     @image[row_index][cell_index + 1] = 1 if cell_index < @image[row_index].length - 1
#   end
  
#   def blurred (number)
#     number.times do
#       blur
#     end
#   end
# end 

# img = Image.new([
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 1, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 1, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# [0, 0, 0, 0, 0, 0, 0, 0, 0],
# ])

# img.output_image
# img.blurred(2)
# puts ''
# img.output_image

