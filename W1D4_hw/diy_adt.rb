require "byebug"
class Stack
  def initialize
    @current_stack = []
  end

  def add(el)
    @current_stack << el

  end

  def remove
    @current_stack.pop
  end

  def show
    @current_stack.dup
  end
end



class Queue
  def initialize
    @current_line = []
  end

  def enqueue(el)
    @current_line << (el)
  end

  def dequeue
    @current_line.shift
  end

  def show
    @current_line.dup
  end
end

class Map
  def initialize
    @current_map = []
  end

  def assign(k,v)
    new_index = @current_map.index{|sub_array| sub_array[0] == k}
    if new_index
      @current_map[new_index][1]=v
    else
      @current_map << [k,v]
    end
  end

  def remove(key)
    @current_map.reject!{|sub_array| sub_array[0] == key}
  end

  def lookup(key)
    @current_map.each do |sub_array|
      if sub_array[0] == key
        return sub_array[1]
      end
    end
    return nil
  end

  def show
    p @current_map
  end

end
