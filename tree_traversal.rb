            #depth first search

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def depth(node = self, value)
  	return node if node.payload == value

  	node.children.each do |child|
  		found = depth(child, value)
  		return found if found
  	end
    nil
  end



  def breadth(current = self, target)
		queue = Queue.new
		queue.enqueue(current)

		loop do
			current = queue.dequeue
			#current is starting point...trunk

			#line 27 - 28 are the end conditions
			return false if current == nil
			return current if current.payload == target
			#target is 11

			current.children.each do |child|
				queue.enqueue(child)
			end
		end
	end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end

            # The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

            # The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

            # The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

            #return a node that contains the value 11 in the tree
# puts trunk.depth(11).inspect
	puts trunk.breadth(11).inspect


