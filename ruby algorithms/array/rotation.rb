def reverse(a,first,last)   #Utility function for reversing array
    i=first
    j=last

    while i<j
        temp=a[i]
        a[i]=a[j]
        a[j]=temp
        i+=1
        j-=1
    end
    return a
end

def left_rotate_array(a,d)  #Input array "a" and rotation by "d" elemets
    n=a.length
    if n>0

        if d>n               # if d>n ,we take modulo n
            d%=n
        end

        reverse(a,0,d-1)
        reverse(a,d,n-1)
        reverse(a,0,n-1)
    end
    return a
end





a=[3,4,24,9,2,34,5,23,5]
puts left_rotate_array a,2
