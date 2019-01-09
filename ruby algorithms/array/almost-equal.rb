#Given array of integers(both +ve and -ve) find the two elements such that their sum is closest to given number x.
#Time-complexity: O(nlogn) // O(nlogn){for sorting}+O(n), Auxiliary-space:O(1)

#Algorithm: Sort the array and using two indexes left and right update the closest sum

def almost arr, k
  arr.sort
  left=rl = 0
  right=rr = arr.length-1
  sum = 1.0/0.0
  while(left<right)
    diff = (arr[left]+arr[right])-k
    if sum>diff.abs
      rl=left
      rr=right
      sum=diff
    end

    diff<0? left+=1:right-=1
  end
  return [arr[rl],arr[rr]]
end

a=[3,4,4,5,6]
puts almost a,9
