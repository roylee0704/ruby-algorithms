class LinkedList

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end
end