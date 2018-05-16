require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(number)
    new_node = Node.new(number)
    if @head == nil
      @head = new_node
    else
      @head.append(new_node)
    end
  end

  def count
    if @head == nil
      0
    else
      next_node = @head
      count     = 1
      until next_node.next_node == nil
        count += 1
        next_node = next_node.next_node
      end
      count
    end
  end

  def to_s
    if @head == nil
      ""
    else
      next_node = @head
      string    = @head.data.to_s
      until next_node.next_node == nil
        string += next_node.next_node.data.to_s
        next_node = next_node.next_node
      end
      string
    end
  end

  def prepend(number)
    new_node = Node.new(number)
    if @head == nil
      @head = new_node
    else
      tail = @head
      new_node.next_node = tail
      @head = new_node
    end
  end

  def insert(position, number)
    if position == 0
      self.prepend(number)
    else
      new_node = Node.new(number)
      @head.insert(position, new_node, 1)
    end
  end

  def pop
    if @head.next_node == nil
      data = @head.data
      @head = nil
      data
    else
      @head.pop
    end
  end

  def shift
    tail = @head.next_node
    data = @head.data
    @head = tail
    data
  end

  def sort
    count.times do
      @head.bubble
      require 'pry'; binding.pry
    end
  end
end
