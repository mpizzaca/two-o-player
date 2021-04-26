require './game.rb'

game = Game.new

while(!game.game_over)
  puts '---------- NEW TURN ----------'
  # Ask p1 a question
  game.generate_question
  puts "Player 1: #{game.question}"

  # Check answer
  print '--> '
  ans1 = gets.chomp
  if (ans1.to_i == game.answer)
    puts "Player 1: Correct!"
  else
    puts "Player 1: Wrong! It is #{game.answer}"
    game.lose_life(1)
  end

  # Ask p2 a question
  game.generate_question
  puts "Player 2: #{game.question}"

  # Check answer
  print '--> '
  ans2 = gets.chomp
  if (ans2.to_i === game.answer)
    puts "Player 2: Correct!"
  else
    puts "Player 2: Wrong! It is #{game.answer}"
    game.lose_life(2)
  end
end

# Output winner
puts '---------- GAME OVER ----------'
puts "The winner is... #{game.winner}"