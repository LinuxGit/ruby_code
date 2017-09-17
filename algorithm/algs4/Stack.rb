# $ java-algs4 edu.princeton.cs.algs4.Stack < tobe.txt
# to be not that or be (2 left on stack)
# $ ruby Stack.rb < tobe.txt
# to be not that or be (2 left on stack)

module LinkedList
  class Node
    attr_accessor :item, :next_node

    def initialize(item, next_node)
      @item = item
      @next_node = next_node
    end
  end

  class Stack
    include Enumerable

    def initialize
      @first = nil
      @size = 0
    end

    def push(item)
      # Ruby is evaluated from right to left
      @first = Node.new(item, @first)
      @size += 1
    end
    alias_method :<<, :push
    
    def pop
      raise "Stack is empty." if empty?
      item = @first.item
      @first = @first.next_node
      @size -= 1
      item
    end
    
    def empty?
      @first.nil?
    end
    
    def size
      @size
    end
 
    def peek
      raise "Stack is empty" if empty?
      @first.item
    end

    def each
      current = @first
      while current.next_node != nil
        yield current.item
        current = current.next_node
      end
      yield current.item
    end

    def to_s
      elements = []
      self.each do |i|
        elements << i
      end
      elements.join(' ')
    end
  end
end

stack = LinkedList::Stack.new

ARGF.each_line(' ') do |line|
  item = line.strip
  if item != '-'
    stack << item
  elsif !stack.empty?
    print stack.pop + ' '
  end
end

print "(#{stack.size} left on stack)\n"
