def shuffle arr
  for i in 0...arr.length
    target = Random.rand(arr.length-i)+i
    arr[target], arr[i] = arr[i], arr[target]
  end
  return arr
end


a = [42,4,22,34,231785,453,7,24]
puts shuffle a
