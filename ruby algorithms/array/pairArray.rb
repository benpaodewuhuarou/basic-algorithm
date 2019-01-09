##Given an array A[] and a number x, check for pair in A[] with sum as x

def pair a,k
  map = Hash.new()
  a.each do |i|
    if(map[k-i])
      return 'there is a pair'
    end
    map[i]=1
  end
  return 'false'
end

a =[4,0,3,2,6,734,4]
puts pair(a,9)
