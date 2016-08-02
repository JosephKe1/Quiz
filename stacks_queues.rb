# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

# Stacks are a Last In First Out Data Structure

class Stack
  def initialize
    @elements = []
  end

  def add(x)
    @elements.push(x)
  end

  def remove
    p @elements.pop
  end

  def display
    puts "First in to last in, in order: " + @elements.to_s
  end
end

lastInFirstOut = Stack.new
lastInFirstOut.add(1)
lastInFirstOut.add(2)
lastInFirstOut.add(3)
lastInFirstOut.add(4)
lastInFirstOut.display
lastInFirstOut.remove

# Queues are a First in First Out Data Structure

class Queue
  def initialize
    @elements = []
  end

  def add(x)
    @elements.push(x)
  end

  def remove
    p @elements.shift
  end

  def display
    puts "First in to last in, in order: " + @elements.to_s
  end
end

firstInFirstOut = Queue.new
firstInFirstOut.add(1)
firstInFirstOut.add(2)
firstInFirstOut.add(3)
firstInFirstOut.add(4)
firstInFirstOut.display
firstInFirstOut.remove 
