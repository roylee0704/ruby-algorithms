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

    before(:all) do
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
      @ll.add(@second_node)
      expect(@ll.head).to be(@first_node)
      expect(@ll.head.next).to be(@second_node)
      expect(@ll.tail).to be(@second_node)
    end

  end
end