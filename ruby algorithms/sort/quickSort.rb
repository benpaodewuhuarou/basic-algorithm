
def quickSort arr
   return arr if arr.count<=1
   left=[]
   right =[]
   pivot = arr.pop
   arr.each do |i|
     if i>=pivot
       right.push(i)
     else
       left.push(i)
     end
   end
   arr
   return quickSort(left),pivot,quickSort(right)
end


a = [2,3,4,423,3,23,63453,123,423,5]
puts quickSort(a)
