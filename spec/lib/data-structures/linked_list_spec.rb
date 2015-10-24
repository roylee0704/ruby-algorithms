# encoding: utf-8

require_relative '../../../lib/algorithms'


describe LinkedList do

  describe '#initialize' do
    it 'should begin with a nil :head & :tail' do
      expect(LinkedList.new.head).to be_nil
      expect(LinkedList.new.tail).to be_nil
    end
  end

  describe '#push_back' do
    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
    end

    it 'should push first node to :head and :tail' do
      @ll.push_back(@first_node)
      expect(@ll.head).to be(@first_node)
      expect(@ll.tail).to be(@first_node)
    end

    it 'should push subsequent node to :tail' do
      @ll.push_back(@first_node)
      @ll.push_back(@second_node)

      expect(@ll.head).to be(@first_node)
      expect(@ll.head.next).to be(@second_node)
      expect(@ll.tail).to be(@second_node)
      expect(@ll.length).to eq(2)
    end
  end

  describe '#push_front' do

    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
      @third_node = Node.new('Third')
    end

    it 'should push first node to :head and :tail' do
      @ll.push_front(@first_node)

      expect(@ll.size).to eq(1)
      expect(@ll.head).to be(@first_node)
      expect(@ll.tail).to be(@first_node)
    end

    it 'should push subsequent node to :head' do
      @ll.push_front(@first_node)
      @ll.push_front(@second_node)

      expect(@ll.size).to eq(2)
      expect(@ll.head).to be(@second_node)
      expect(@ll.tail).to be(@first_node)

      @ll.push_front(@third_node)

      expect(@ll.size).to eq(3)
      expect(@ll.head).to be(@third_node)
      expect(@ll.tail).to be(@first_node)
    end

  end

  describe '#push_at' do

    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
      @third_node = Node.new('Third')
      @pivot_node = Node.new('Pivot')
      @pivot_two_node = Node.new('Pivot_Two')

    end

    it 'should push node to front, if index = 0' do
      @ll.push_back(@third_node)
      @ll.push_front(@second_node)
      @ll.push_front(@first_node)

      @ll.push_at(0, @pivot_node)

      expect(@ll.size).to eq(4)
      expect(@ll.head).to be(@pivot_node)
    end

    it 'should push node to back, if index = size - 1' do
      @ll.push_back(@third_node)
      @ll.push_front(@second_node)
      @ll.push_front(@first_node)

      index = 3 - 1
      @ll.push_at(index, @pivot_node)

      expect(@ll.size).to eq(4)
      expect(@ll.tail).to be(@pivot_node)
    end

    it 'should insert node to any desirable position, say at middle of list' do
      @ll.push_back(@third_node)
      @ll.push_front(@second_node)
      @ll.push_front(@first_node)

      expect(@ll.size).to eq(3)
      expect(@ll.get(0)).to be(@first_node)
      expect(@ll.get(1)).to be(@second_node)
      expect(@ll.get(2)).to be(@third_node)

      index = 3 / 2 #return 1
      @ll.push_at(index, @pivot_node)

      expect(@ll.size).to eq(4)
      expect(@ll.get(0)).to be(@first_node)
      expect(@ll.get(1)).to be(@pivot_node)
      expect(@ll.get(2)).to be(@second_node)
      expect(@ll.get(3)).to be(@third_node)

      index = 3 / 2 #return 1
      @ll.push_at(index, @pivot_two_node)

      expect(@ll.size).to eq(5)
      expect(@ll.get(0)).to be(@first_node)
      expect(@ll.get(1)).to be(@pivot_two_node)
      expect(@ll.get(2)).to be(@pivot_node)
      expect(@ll.get(3)).to be(@second_node)
      expect(@ll.get(4)).to be(@third_node)

      expect{@ll.get(6)}.to raise_error(ArgumentError)

    end
  end


  describe '#get' do

    before(:each) do
      @ll = LinkedList.new
      @first_node = Node.new('First')
      @second_node = Node.new('Second')
      @third_node = Node.new('Third')

      @ll.push_back(@first_node)
      @ll.push_back(@second_node)
      @ll.push_back(@third_node)
    end

    it 'should get node at first index' do
      expect(@ll.get(0)).to be(@first_node)
    end

    it 'should get node at last index' do
      expect(@ll.get(@ll.size - 1)).to be(@third_node)
    end

    it 'should get node at 2nd index' do
      expect(@ll.get(1)).to be(@second_node)
    end

    it 'should get node at 3rd index' do
      expect(@ll.get(2)).to be(@third_node)
    end

    it 'should raise exception, if invalid index was given' do
      @ll.clear

      expect(@ll.size).to be(0)
      expect{@ll.get(0)}.to raise_error(ArgumentError)
    end

  end
end