def area_triangle
  puts "Enter base of triangle"
  base = Float(gets.chomp)

  puts "Enter height of triangle"
  height = Float(gets.chomp)

  area = 0.5 * base.to_f * height.to_f
  puts "Area of triangle equal #{area}"

end

area_triangle