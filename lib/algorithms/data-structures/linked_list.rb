class LinkedList

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  #TODO it's dangerous to allow user to stuff `node` in, coz it makes it vulnerable
  def push_back(node)

    if @tail
      @tail.next = node
      @tail = node
    else
      @head = @tail = node
    end
    @size += 1

  end

  def push_front(node)

    if @head
      node.next = @head
      @head = node
    else
      @head = @tail = node
    end
    @size += 1

  end

  def push_at(index, node)

    case index
      when 0 then push_front(node)
      when @size - 1 then push_back(node)
      else
        prevNode = get (index - 1)

        node.next = prevNode.next
        prevNode.next = node
        @size = @size + 1
    end

  end

  def get(index)

    fail ArgumentError, 'index not available' if invalid_index?(index)

    counter = 0
    node = @head

    until counter >= index || node.equal?(@tail) do
      node = node.next
      counter += 1
    end

    node
  end

  def invalid_index?(index)
    @size == 0 || index < 0 || index > @size
  end


  # Return the number of items in the List.
  def size
    @size
  end
  alias_method :length, :size

  def empty?
    @size == 0
  end

  def clear
    @head = nil
    @tail = nil
    @size = 0
  end
end