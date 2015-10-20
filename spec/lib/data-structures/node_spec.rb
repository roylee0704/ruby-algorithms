# encoding: utf-8

require_relative '../../../lib/algorithms'

describe Node do
  it 'should construct properly' do
    @node = Node.new('data')

    expect(@node.data).to eq('data')
    expect(@node.next).to eq(nil)
    expect(@node.prev).to eq(nil)
  end

  it 'should able to reference to its next node' do
    @a_node = Node.new('A-Node')
    @b_node = Node.new('B-Node')

    @a_node.next = @b_node
    expect(@a_node.next).to be(@b_node)
  end

  it 'should able to reference to its prev node' do
    @a_node = Node.new('A-Node')
    @b_node = Node.new('B-Node')

    @a_node.prev = @b_node
    expect(@a_node.prev).to be(@b_node)
  end
end