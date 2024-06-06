class GameController < ApplicationController
  def determine_winner(our_move, computer_move)
    if our_move == computer_move
      return "We tied!", computer_move
    elsif (our_move == 1 && computer_move == 3) || (our_move == 2 && computer_move == 1) || (our_move == 3 && computer_move == 2)
      return "We won!", computer_move
    else
      return "We lost!", computer_move
    end
  end

  def generate_move
    rand(1..3)
  end

  def giraffe
    our_move = 1
    computer_move = generate_move

    @outcome, @computer_move = determine_winner(our_move, computer_move)

    render({ :template => "game_templates/play_rock" })
  end

  def elephant
    our_move = 2
    computer_move = generate_move

    @outcome, @computer_move = determine_winner(our_move, computer_move)
    render({ :template => "game_templates/play_paper" })
  end

  def zebra
    our_move = 3
    computer_move = generate_move

    @outcome, @computer_move = determine_winner(our_move, computer_move)
    render({ :template => "game_templates/play_scissors" })
  end

  def lion
    render({ :template => "game_templates/rules" })
  end
end
