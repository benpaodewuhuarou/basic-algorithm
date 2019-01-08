module Link
  def reverse(list){
     pre = nil
     current = list
     next = nil

     while current != nil
       next = current.next
       current.next= pre
       pre = current
       current = next
     end
     current = pre
     return current
  }
end
