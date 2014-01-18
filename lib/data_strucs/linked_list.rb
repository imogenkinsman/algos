# good references for implementing a linked list in ruby, and ruby data strucs in general:
# http://khakimov.com/blog/2012/05/11/back-to-school-linked-list-with-ruby/
# http://www.sitepoint.com/rubys-missing-data-structure/
# http://cslibrary.stanford.edu/103/

Node = Struct.new(:value, :next)

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert(val)
    unless @head
      @head = @tail = Node.new(val, nil)
    else
      old_tail = @tail
      @tail = Node.new(val, nil)
      old_tail.next = @tail
    end
  end

  #def print
  #  node = @head
  #  s = ""
  #  until node.nil?
  #    s += (node == @tail ? "#{node.value}" : "#{node.value}, ")
  #    node = node.next
  #  end
  #  return s
  #end

  def find
    
  end

  def reverse

    current_node = @head
    previous_node = nil
    next_node = nil

    while current_node
      next_node = current_node.next
      current_node.next = previous_node
      previous_node = current_node
      current_node = next_node
    end

    @head, @tail = @tail, @head

  end
end
