def missing arr
  b = Array(1..arr.length+1)
  return b-arr
end

a = [3,2,1,5,6]
puts missing a
