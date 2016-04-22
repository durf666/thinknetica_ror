# мне правда тяжело представить, что должен ввести пользователь, чтобы программа вывела "triangle is right"

def triangle
	puts "Enter 1st side"
	a = Float(gets.chomp)	

	puts "Enter 2nd side"
	b = Float(gets.chomp)	

	puts "Enter 3rd side"
	c = Float(gets.chomp)    

	if a == b && a == c && b == c
	  puts "This triangle is ravnostoronnyi"
	elsif ((a**2 == (b**2 + c**2)) || (b**2 == (a**2 + c**2)) || (c**2 == (a**2 + b**2))) && ((a == b) || (a == c) || (b == c))
      puts "This triangle is right and ravnobedrennyi"
    elsif (a**2 == (b**2 + c**2)) || (b**2 == (a**2 + c**2)) || (c**2 == (a**2 + b**2))
      puts "This triangle is right"
    elsif a == b || a == c || b == c
      puts "This triangle is ravnobedrennyi"
    else
	  puts "This triangle is usual"
	end
end

triangle







