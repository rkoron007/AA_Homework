require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    cups = Array.new(14){ Array.new }
    cups.each_with_index do |cup, i|
      if i == 6 || i == 13
        next
      else
        4.times { cup << :stone}
      end
    end
     cups
  end

  def valid_move?(start_pos)
    if start_pos > cups.length
      raise ("Invalid starting cup")
    elsif cups[start_pos].empty?
      raise ("Invalid starting cup")
    end
  end

  def make_move(start_pos, current_player)
    stones = cups[start_pos]
    cups[start_pos] = []
    shift = start_pos
    until stones.empty?
      shift += 1
      shift = 0 if shift > 13

      if shift == 6
        cups[shift] << stones.pop if current_player == @name1
      elsif shift == 13
        cups[shift] << stones.pop if current_player == @name2
      else
        cups[shift] << stones.pop
      end
    end
    render
    next_turn(shift)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].count == 1
      :switch
    else
    ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if cups[0..6].flatten.empty?
    return true if cups[7..12].flatten.empty?
    false
  end

  def winner
    player1_count = @cups[6].length
    player2_count = @cups[13].length
    if player1_count == player2_count
      return :draw
    else
      player1_count > player2_count ? @name1 : @name2
    end
  end
end

l = Board.new("e","f")
l.one_side_empty?
