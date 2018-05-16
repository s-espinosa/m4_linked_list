require 'rspec'
require './lib/linked_list'

describe LinkedList do
  it "initializes with no head" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "can append a new number" do
    list = LinkedList.new

    list.append(5)

    expect(list.head.data).to eq(5)
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_s).to eq("5")
  end

  it "can append multiple numbers" do
    list = LinkedList.new

    list.append(5)
    list.append(4)

    expect(list.count).to eq(2)
    expect(list.to_s).to eq("54")
  end

  it "can prepend a number" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)

    expect(list.count).to eq(3)
    expect(list.to_s).to eq("354")
  end

  it "can insert a number" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)
    list.insert(1, 8)

    expect(list.count).to eq(4)
    expect(list.to_s).to eq("3854")
  end

  it "can insert a number at a different position" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)
    list.insert(2, 8)

    expect(list.count).to eq(4)
    expect(list.to_s).to eq("3584")
  end

  it "can remove a node from the end of the list" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)
    list.insert(2, 8)

    expect(list.pop).to eq(4)
    expect(list.to_s).to eq("358")
    expect(list.count).to eq(3)
  end

  it "can remove a node from the beginning of the list" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)
    list.insert(2, 8)

    expect(list.shift).to eq(3)
    expect(list.to_s).to eq("584")
    expect(list.count).to eq(3)
  end

  it "can sort itself" do
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)
    list.insert(2, 8)
    list.append(9)
    list.append(2)
    expect(list.to_s).to eq("358492")
    list.sort

    expect(list.to_s).to eq("234589")
  end
end
