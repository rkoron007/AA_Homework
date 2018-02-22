require "byebug"
octopus_food = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_oct(arr)
  longest_fish = ""

  arr.each do |el|
    arr.each do |el2|
      if el > el2
        longest_fish = el
      end
    end
  end
  longest_fish
end

class Array
  def merge_sort(&prc)
    return self if self.length <= 1
    prc ||= Proc.new {|x,y| x <=> y}

    middle = self.length/2
    left = self[0...middle]
    right = self[middle..-1]

    left, right = left.merge_sort(&prc), right.merge_sort(&prc)

    Array.merge(left,right,&prc)
  end

  def self.merge(left,right,&prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left,right)
      when 1
        merged << right.shift
      when 0
        merged << left.shift
      when -1
        merged << left.shift
      end
    end
    merged.concat(left).concat(right)
  end
end

def dominant_oct(arr)
  prc = Proc.new {|x,y| x.length <=> y.length}

  arr.merge_sort(&prc).last
end

def clever_oct(arr)
  longest_fish = ""
  arr.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(arr, tile_string)
  tile_found = nil
  arr.each_with_index do |el, i|
    if el == tile_string
      tile_found = i
      break
    end
  end
  tile_found
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
  }
  def fast_dance(tile_hash, tile_string)
    tile_hash[tile_string]
  end
