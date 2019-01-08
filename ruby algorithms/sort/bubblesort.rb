#bubble sort
#1
arr = Array[2,23,4,5,20,65,3,3,58,45];

def bubble (arr)
  n = arr.length
  for i in(0..n-1)
    for j in(1..n-i-1)
      if arr[j]<arr[j-1]
        arr[j], arr[j-1] = arr[j-1], arr[j]
      end
    end
  end
  return arr
  puts 'after the return'
end

#2
def bubble2 (arr)
  n= arr.length
  until n == 0
    new_n = 0
    (1..n-1).each do |j|
      if arr[j]<arr[j-1]
        arr[j], arr[j-1] = arr[j-1], arr[j]
        new_n=j
      end
    end
    n=new_n;
  end
  return arr
end

#              access search insertion deletion
#   Array       o1      0n      0n        0n
# Linked list   0n      0n      01        01
