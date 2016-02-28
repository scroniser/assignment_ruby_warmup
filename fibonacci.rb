def fibonacci(n)
  arr = []
  if n==1
    arr.push(1)
  else
    arr.push(1,1)
    (3..n).each do |x|
      arr.push(arr[x-3] + arr[x-2])
    end

  end
  return arr
end

#test
print fibonacci(89)