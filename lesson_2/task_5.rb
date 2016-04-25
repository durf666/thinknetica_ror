def task
  arr = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  puts "Enter date"
  date = gets.chomp.to_i

  puts "Enter month from 1 to 12"
  month = gets.chomp.to_i

  puts "Enter year"
  year = gets.chomp.to_i 

  count = 0
  for i in 0..month-1
    count += arr[i] 
  end
  
  var = count + date - arr[month-1]
  var = var + 1 if (year % 4 == 0 or year % 400 == 0) and month > 2

puts var
end

task