# encoding: utf-8

require_relative '../../../lib/algorithms'


describe LinkedList do

  describe '#initialize' do
    it 'should begin with a nil head & tail' do
      expect(LinkedList.new.head).to be_nil
      expect(LinkedList.new.tail).to be_nil
    end
  end

  describe '#add' do
    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
    end

    it 'should add first node to head and tail' do
      @ll.add(@first_node)
      expect(@ll.head).to be(@first_node)
      expect(@ll.tail).to be(@first_node)
    end

    it 'should add subsequent node to tail' do
      @ll.add(@first_node)
      @ll.add(@second_node)

      expect(@ll.head).to be(@first_node)
      expect(@ll.head.next).to be(@second_node)
      expect(@ll.tail).to be(@second_node)
      expect(@ll.size).to eq(2)
    end
  end

  describe '#get' do
    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
      @third_node = Node.new('Third')
    end

    it 'should get node at first index' do
      @ll = LinkedList.new
      @ll.add(@first_node)

      expect(@ll.get(0)).to be(@first_node)
    end

    it 'should get node at last index' do
      @ll = LinkedList.new
      @ll.add(@first_node)
      @ll.add(@second_node)
      @ll.add(@third_node)

      expect(@ll.get(@ll.size-1)).to be(@third_node)
    end

    it 'should get node at 2nd index' do
      @ll = LinkedList.new
      @ll.add(@first_node)
      @ll.add(@second_node)
      @ll.add(@third_node)

      expect(@ll.get(1)).to be(@second_node)
    end

    it 'should get node at 3rd index' do
      @ll = LinkedList.new
      @ll.add(@first_node)
      @ll.add(@second_node)
      @ll.add(@third_node)

      expect(@ll.get(2)).to be(@third_node)
    end
  end
end