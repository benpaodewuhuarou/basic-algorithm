def insertionSort arr
  for i in 1...arr.length
    j=i
    while j>0
      if arr[j-1]>arr[j]
        arr[j-1], arr[j] = arr[j], arr[j-1]
      else
        break
      end
      j-=1
    end
  end
  return arr
end

a = [2,3,4,423,3,23,63453,123,423,5]
puts insertionSort(a)
