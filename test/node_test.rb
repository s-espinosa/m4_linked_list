require 'rspec'
require './lib/node'

describe Node do
  it "initializes with data and no next_node" do
    node = Node.new(5)

    expect(node.data).to eq(5)
    expect(node.next_node).to eq(nil)
  end

  it "can append a new node" do
    node_1 = Node.new(5)
    node_2 = Node.new(4)

    node_1.append(node_2)

    expect(node_1.next_node).to eq(node_2)
  end
end
