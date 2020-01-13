class LinkedList
  attr_accessor :value, :next_value

  def initialize(value, next_value = nil)
    @value = value
    @next_value = next_value
  end  

end  

def display_values(nodes)
  if nodes
    print "#{nodes.value}---"
    display_values(nodes.next_value)
  else 
   print "nil"
  end  
end  

def reverse_list(list, previous = nil)
  current_head = list.next_value
  list.next_value = previous
  if current_head
    reverse_list(current_head, list)
  else
    list 
  end  

end

node1 = LinkedList.new(3)
node2 = LinkedList.new(6, node1)
node3 = LinkedList.new(9, node2)

display_values(node3)
puts "-----"
revlist = reverse_list(node3)
display_values(revlist)