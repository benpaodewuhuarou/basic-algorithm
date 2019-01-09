def mcs arr
  max_number = arr[0]
  last = arr[0]
      for i in 1..arr.length-1
          current = last + arr[i]
          if current>last
            last +=arr[i]
          else
            last = 0
          end
          max_number = [last,max_number].max
      end
    return max_number
end

a=[3,4,24,-9,-2,34,-5,23,-5]
puts mcs a

# def max_continuos_sum(a)
#    max_ending_sum = max_slice_sum =0
#    n=a.length
#    for i in 0...n
#     max_ending_sum = [0,(max_ending_sum+a[i])].max
#     max_slice_sum = [max_slice_sum,max_ending_sum].max
#    end
#     return  max_slice_sum
# end
#
# puts max_continuos_sum([1,1,-1,2,3,4,-9,3,4,5,-6]) # => 13
