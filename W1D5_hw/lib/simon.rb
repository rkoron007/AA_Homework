class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize()
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    until @game_over
    take_turn
    sleep 1
    system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      add_random_color
      @sequence_length += 1
    end
  end

  def show_sequence
    unless @seq.empty?
     puts "Okay here are the colors!"
     sleep 1

     seq.each do |color|
       puts color
       sleep 2
       system("clear")
     end
   end
  end

  def require_sequence
    puts "Okay one at a time give me back the sequence."
    seq.each do |color|
      answer = gets.chomp
      if answer != color
        @game_over = true
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You made it to a new round!"
  end

  def game_over_message
    puts "Sorry you lost! Try again!"
  end

  def reset_game
    puts "Play again? y or n?"
    answer = gets.chomp
    if answer == "y"
      @seq = []
      @sequence_length = 1
      @game_over = false
      play
    else
      puts "No worries! Have a good one"
    end
  end
end

party = Simon.new
party.play
