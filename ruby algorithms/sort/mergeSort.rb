def merge (left,right)
  arr=[]
  while left.length>0 && !right.empty?
    if left[0]>=right[0]
         arr << right.shift
    else
        number = left.shift
        arr.push(number)
    end
  end
  arr.concat(left).concat(right)
end

def mergeSort(arr)
  return arr if arr.length==1
  middle = arr.length/2
  left = arr[0...middle]
  right = arr[middle..arr.length]

  return merge(mergeSort(left),mergeSort(right))
end
