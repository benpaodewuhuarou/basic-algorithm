def leader arr
  max_number = arr[arr.length-1]
  result =[max_number]
  arr.reverse_each do |i|
    if i>max_number
      max_number= i
      result.push(i)
    end

  end
  return result
end


a =[2,3,45,63,23,4]
puts leader a
