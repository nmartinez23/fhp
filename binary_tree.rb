class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end
end

class TreeSort

	def self.build_tree(array)
		first = array[0]
		tree = BinaryTree.new(first, nil, nil)
		rest = array.last(array.length - 1)

		# loop through rest array for each element
		# put the element into the tree at its position
		rest.each do |num|
			current = tree
			loop do 
				if num <= current.payload
					if current.left == nil 
						current.left = BinaryTree.new(num, nil, nil)
						break
					else
						current = current.left
					end

				else
					if current.right == nil
						current.right = BinaryTree.new(num, nil, nil)
						break
					else
						current = current.right
					end
				end
			end
		end
		tree
	end

	# Tree 

	#   3
	# 1   5
	#    4

  # [left, self, right].flatten
	def self.flatten_tree(tree)
		elements = []

		# collect everything on the left
		elements.concat(flatten_tree(tree.left)) if tree.left
		
		# collect the current node
		elements << tree.payload

		# collect everything on the right
		elements.concat(flatten_tree(tree.right)) if tree.right

		return elements # .flatten

		# return everything

		# [tree.left.payload, tree.payload, (all the stuff on the right)]

		#build new array by flattening tree
		#do DFS algorithm
		#modify it by dealing with left side first, 
		#node itself second and right side last
		# flatten = []
		# flatten = flatten_tree()



		# return node if node.payload == value

  # 	node.children.each do |child|
  # 		found = depth(child, value)
  # 		return found if found
  # 	end
  #   nil

	end
	
	def self.sort(array)
		tree_representation = build_tree(array)

		return flatten_tree(tree_representation)
	end
end

arr = [7, 4, 9, 1, 6, 14, 10]

result = TreeSort.sort(arr)
puts result.inspect


