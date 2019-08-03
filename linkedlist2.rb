class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value,next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} ==>"
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

# 'class Stack' reverses linkedlist
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value,@data)
    end

    def pop
      if @data 
        @data = @data.next_node
      else
        @data = nil
      end

    end

end

# below reverses linkedlist via iterative process
def reverse_list(list)

  stack = Stack.new

  while list
    
    stack.push(list.value)
    list = list.next_node
  end
  stack.data  
end

# below changes node to prior node for each 
def reverse_list_2(list, previous=nil)
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list_2(next_node, list)
  end
end


node1 = LinkedListNode.new(37,nil)
node2 = LinkedListNode.new(99,node1)
node3 = LinkedListNode.new(12,node2)


print_values(node3)

puts "-------\n"
puts "reverse_list with stack\n"

revlist = reverse_list(node3)

print_values(revlist)

puts "-------\n"
puts "reverse_list2 use recursion to reverse node pointer\n"

revlist2 = reverse_list_2(node3)

print_values(node1)
