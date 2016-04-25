def fibonachi
  arr = [1, 1, 2]
  i = 0

  while arr[-1] < 100
    i += 1    	
    arr << arr[i+2] = arr[i] + arr[i+1]
  end

  arr.delete_if { |item| item > 100 }
  p arr  
end

fibonachi