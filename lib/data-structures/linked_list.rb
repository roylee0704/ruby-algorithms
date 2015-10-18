class Node
  attr_accessor :data, :next, :head

  def initialize (data, node = nil)
    @data = data
    @next = node
  end

  def add(data)
    n = Node.new(data)

    if head.nil?
      head = n;
    else
      head.next = n
    end
  end

end


A = Node.new('A')
B = Node.new('B')

A.next = B
n = A
while n
  puts n.data
  n = n.next
end



