class CircularQueue
  def initialize size
    @queue = Array.new(size)
    @order = []
    check
  end
  
  def enqueue num
    check
    if @open_spaces != []
      @order << @open_spaces[0]
      @queue[@open_spaces.shift] = num
    else
      @order << @order[0]
      @queue[@order.shift] = num
    end
  end
  
  def dequeue
    check
    if @open_spaces.size == @queue.size
      nil
    else
      return_dequeued = @queue[@order[0]]
      @queue[@order.shift] = nil
      return_dequeued
    end
  end
  
  def check
    @open_spaces = []
    @queue.each_with_index do |space, index|
      if space == nil
        @open_spaces << index
      end
    end  
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil