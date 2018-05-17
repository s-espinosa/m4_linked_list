class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def append(node)
    if @next_node == nil
      @next_node = node
    else
      @next_node.append(node)
    end
  end

  def insert(position, new_node, current_position)
    if position == current_position
      tail = next_node
      new_node.next_node = tail
      self.next_node = new_node
    else
      current_position += 1
      next_node.insert(position, new_node, current_position)
    end
  end

  def pop
    if next_node.next_node == nil
      data      = next_node.data
      self.next_node = nil
      data
    else
      next_node.pop
    end
  end

  def bubble
    return if next_node.next_node == nil
    if next_node.data > next_node.next_node.data
      swap_children
    end
    next_node.bubble
  end

  private

  def swap_children
    tail                = next_node.next_node
    next_node.next_node = nil
    tail.insert(1, next_node, 1)
    @next_node = tail
  end
end
