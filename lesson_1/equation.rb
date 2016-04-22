def equation
  puts "Kind of equation: a*x**2 + b*x + c = 0"

  print "Enter a:"
  a = Float(gets.chomp)
	
  print "Enter b:"
  b = Float(gets.chomp)

  print "Enter c:"
  c = Float(gets.chomp)

  d = b**2 - 4*a*c
  
  if d < 0 
	puts "This equation hasn't rational solutions" 
  elsif d == 0
  	puts "This equation has one solution #{-b/(2*a)}"
  else 	
  	puts "This equation has two solutions: #{(-b + Math.sqrt(d))/(2*a)} and #{(-b - Math.sqrt(d))/(2*a)}"  
  end
end

equation