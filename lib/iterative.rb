class LinkedList
  attr_reader :head_node

  def initialize
    @head_node = Node.new(nil)
  end

  def empty?
    @head_node.pointer == nil
  end

  def push(element)
    current_node = @head_node

    until current_node.pointer == nil
      current_node = current_node.pointer
    end
    current_node.pointer = Node.new(element)
  end

  def pop(element)
    #find element before it
    #set that elements pointer to nil
    raise IndexError, "no data, empty" if empty?

    current_node = @head_node
    until current_node.pointer.pointer == nil
      current_node = current_node.pointer
    end
    to_return = current_node.pointer.data
    current_node.pointer = nil
    to_return
  end

  def first
    @head_node.pointer.data
  end

  def last
    current_node = @head_node
    until current_node.pointer == nil
      current_node = current_node.pointer
    end
    current_node.data
  end

  def count
    count = 0
    current_node = @head_node
    until current_node == nil
      count += 1 
      current_node = current_node.pointer
    end
    return count
  end

end

class Node
  attr_accessor :pointer
  attr_reader :data

  def initialize(data, pointer = nil)
    @data    =  data
    @pointer =  pointer
  end
end


# {[nil, nil]}
# {[nil, ['hello', nil]]}
# {[nil, ['hello', ['world', nil]]]}

# def add(element)
    # if head_node == nil
    #   @head_node = Node.new(element)
    # else
    #   if @head_node.pointer == nil
    #     @head_node.pointer = Node.new(element)
    #   else
    #     if @head_node.pointer.pointer == nil
    #       @head_node.pointer.pointer = Node.new(element)
    #     end
    #   end
    # end
# end