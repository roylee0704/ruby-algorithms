class LinkedList

  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(node)
    @size = @size + 1
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def get(index)

    counter = 0
    node = @head

    until counter >= index || node.equal?(@tail) do
      node = node.next
      counter += 1
    end

    node
  end

  def invalid_index?(index)
    index < 0 || index > @size
  end

  # def delete(index = @size-1)
  #
  #   node = nil
  #   unless invalid_index?(index)
  #     node =
  #   end
  #   node
  # end

  def is_empty
    @size.eql?(0)
  end
end