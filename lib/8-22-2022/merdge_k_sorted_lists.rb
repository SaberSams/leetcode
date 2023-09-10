class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

## Recursivly Creates a linked list out of arguments
def create_LinkedList(*args)
  return Node.new(args.shift) if args.length == 1
  return Node.new(args.shift, create_LinkedList(*args))
end

def merdge(a, b)
  return a if b.nil?
  return b if a.nil?
  if a.value < b.value
    a.next_node = merdge(a.next_node, b)
    return a
  else
    b.next_node = merdge(a, b.next_node)
    return b
  end
end

def merdge_k_sorted_lists(*lists)
  return lists.shift if lists.length == 1
  return merdge(lists.shift, merdge_k_sorted_lists(*lists))
end


a = create_LinkedList *(1..20).step(4).to_a
b = create_LinkedList *(2..20).step(4).to_a
c = create_LinkedList *(3..20).step(4).to_a
d = create_LinkedList *(4..20).step(4).to_a

e = merdge_k_sorted_lists(a, b, c, d)

head = e
while not head.nil?
  puts head.value
  head = head.next_node
end
