require_relative 'LinkedList'

l = LinkList.new(8)
l.append(9)
l.append(10)

l.delete(10)
puts  l.find_tail
