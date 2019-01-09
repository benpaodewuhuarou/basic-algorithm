#iterate
 def reverse arr
   return arr if arr.length<=1
   left = 0
   right = arr.length-1

   while left<right
     arr[left],arr[right]=arr[right],arr[left]

     left+=1
     right-=1
   end
   return arr
 end

a = [3,4,5,23,4,5]

puts reverse a
