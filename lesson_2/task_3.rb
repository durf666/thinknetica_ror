def array_fibonachi
  arr = [1, 1, 2]
  for i in 0..7
    arr << (arr[i]+arr[i+1]=arr[i+2])
  end
  p arr
end

array_fibonachi