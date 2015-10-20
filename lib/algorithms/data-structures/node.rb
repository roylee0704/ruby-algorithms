class Node
  attr_accessor :data, :next, :prev

  def initialize (data, next_node = nil, prev_node = nil)
    @data = data
    @next = next_node
    @prev = prev_node
  end
end


