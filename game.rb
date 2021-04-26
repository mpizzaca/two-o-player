require './player.rb'

class Game
  attr_reader :question, :answer
  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
  end

  def generate_question
    n1 = rand(1..20)
    n2 = rand(1..20)
    @question = "What is #{n1} plus #{n2}?"
    @answer = n1 + n2
  end

  def lose_life(player_id)
    if player_id === 1
      @p1.hp -= 1
    elsif player_id === 2
      @p2.hp -= 1
    end
  end

  def game_over
    @p1.hp === 0 || @p2.hp === 0
  end

  def winner
    if @p1.hp === 0 && @p2.hp === 0
      return 'TIE'
    elsif @p1.hp === 0
      return 'Player 2'
    else 
      'Player 1'
    end
  end
end
