class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

	def print_values(list_node)
		if list_node
			print "#{list_node.value} --> "
			print_values(list_node.next_node)
		else
			print "nil\n"
			return
		end
	end

class Stack
	attr_reader :data

	def initialize
		@data = nil
	end

	#Push a value onto stack
	def push(value)
		@data = LinkedListNode.new(value, @data)
	end

	#pop last item that was pushed on stack and return value
	def pop
		value = @data.value
		@data = @data.next_node
		return value
	end
end

	# def reverse_list(list)
	# 	new_list = Stack.new

	# 	while list
	# 		value = list.value
	# 		list = list.next_node
	# 		new_list.push(value)
	# 	end
	# 	new_list.data
	# end

# 					OR

	# def reverse_list(list)
	# 	stack = Stack.new

	# 	while list 
	# 		stack.push(list.value)
	# 		list = list.next_node
	# 	end

	# 	stack.data
	# end

						#OR
	# LinkedList 2 Exercise - Reverse list using mutation
	def reverse_list(list, previous=nil)
  	while list 
  			current_node = list
  			next_node = list.next_node
 				current_node.next_node = previous
 				list = next_node
 				previous = current_node
  	end
  	current_node
  end
	

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)
