def selectSort arr
    new_arr =[]
    until arr.count==0
      min = arr.shift
      for i in (0...arr.length)
        if(arr[i]<min)
          temp = arr[i]
          arr[i]=min
          min=temp
        end
      end
      new_arr << min
    end
    return new_arr
end

a = [2,3,4,423,3,23,63453,123,423,5]
puts selectSort(a)
