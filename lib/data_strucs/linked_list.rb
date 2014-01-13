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
    if @head.nil?
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

  def reverse

    head = @head

  end
end
