class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq =[]
  end

  def play
    until @game_over 
      self.take_turn
    end
    self.game_over_message
    self.reset_game

  end

  def take_turn
    self.show_sequence
    self.require_sequence
     if !game_over
      self.round_success_message
      @sequence_length+=1
     end

  end

  def show_sequence
    self.add_random_color

  end

  def require_sequence
    #seq has all the colors !
    @seq.each do |color|
    input_color = gets.chomp
      if color[0] != input_color 
        @game_over = true 
      end
    end
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message
    print "GG you OP "
  end

  def game_over_message
    print "git gud noob"
    # system("clear")
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false 

  end
end
