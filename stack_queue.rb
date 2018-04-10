# QUEUES

class Queue
  def initialize(size)
    @size = size
    @array = Array.new(size)
    @item_count = 0
  end

  def dequeue
    if !empty?
      @array.delete_at(0)
      @array.concat([nil])
    else
      puts "Queue is empty!"
    end
  end

  def enqueue(element)
    if !full?
      @array[@item_count] = element
      @item_count += 1
    else
      puts "This queue is already full!"
    end
  end

  def size
    @item_count
  end

  #private

  def full?
    if @item_count == @size
      true
    else
      false
    end
  end

  def empty?
    if @item_count == 0
      true
    else
      false
    end
  end
end

line = Queue.new(5)

line.enqueue(1)
line.enqueue(2)
line.dequeue
line

    # if !empty?
    #   i = 0
    #   while i<@item_count
    #     if i != @item_count-1
    #       @array[i] = @array[i+1]
    #       i+=1
    #     else
    #       @array[i] = nil
    #       i+=1
    #     end
    #   end
    # else
    #   puts "Queue is empty"
    # end

# STACKS

class Stack
  # attr_accessor :array
  def initialize(size)
    @array = Array.new(size)
    @size = size
  end

  #This method should remove from the top of the stack
  def pop
    if empty?
      puts "nothing to pop"
    else
      array_length = @array.length
      i = array_length-1
      while i>0
        if @array[i] != nil
          @array[i] = nil
          i = 0
        else
          i-=1
        end
      end
    end
  end

  #This method should add to the top of the stack
  def push(element)

    if full?
      puts "stack is full"
    else
      array_length = @array.length
      i=0
      while i<array_length
        if @array[i] == nil
          @array[i] = element
          i = array_length
        else
          i+=1
        end
      end
    end
  end

  #This should return the size
  def size
    i = 0
    counter = 0
    while i < @size
      if @array[i] != nil
        i+=1
        counter += 1
      else
        i = @size
      end

    end
    counter
  end

  #This should return the element at the top of the stack
  def peek
    if empty?
      puts nil
    else
      array_length = @array.length
      i = array_length-1
      while i>0
        if @array[i] != nil
          counter = i
          i = 0
        else
          i-=1
        end
      end
    end
    @array[counter]
  end

  private #These methods are private because we only want to use them as utility methods for our public methods. Think about when you need to check if the stack if empty or full

  #This should check if our stack is full based on the intial size
  def full?
    array_length = @array.length
    if @array[array_length-1] == nil
      false
    else
      true
    end
  end

  #This should check if our stack if empty based on the inital size
  def empty?
    if @array[0] == nil
      true
    else
      false
    end
  end
end


my_stack  = Stack.new(5)
my_stack.push(1)
my_stack.push(2)
my_stack.push(3)
my_stack.push(4)
my_stack.push(5)

my_stack.push('full')
my_stack.push('full2')

# puts my_stack.array
my_stack.pop
my_stack.pop
# puts my_stack.array
puts my_stack.size
# my_stack.full?
puts my_stack.peek
my_stack 
