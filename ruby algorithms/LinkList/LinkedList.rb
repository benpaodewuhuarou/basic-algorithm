require_relative 'Node'

class LinkList
  def initialize(value)
    @head=Node.new(value)
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    if !node.next
      return node
    end

    while node.next
      node=node.next
    end

    return node
  end

  def delete (val)
    current = @head
    if(current.value==val)
      @head=current.next
    end

    while(current.next && current.next.value!=val)
      current= current.next
    end

    unless current.next==nil
      current.next=current.next.next
    end
  end

  def find (val)
    current = @head
    if current.value==val
      return current
    end
    while current.next
      if current.value == val
        return current;
      end
        current= current.next
    end
  end
end
