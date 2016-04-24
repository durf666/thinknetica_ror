def task
  arr = [ [1, 31], [2, 28], [3, 31], [4, 30], [5, 31], [6, 30], [7, 31], [8, 31], [9, 30], [10, 31], [11, 30], [12, 31] ]

  puts "Enter date"
  date = gets.chomp.to_i

  puts "Enter month from 1 to 12"
  month = gets.chomp.to_i

  puts "Enter year"
  year = gets.chomp.to_i 

  count = 0
  for i in 0..month-1
    count += arr[i][1] 
  end

  if year % 4 == 0 or year % 400 == 0
    var = count + date - arr[month-1][1] + 1
  else
    var = count + date - arr[month-1][1]
  end

puts var
end

task