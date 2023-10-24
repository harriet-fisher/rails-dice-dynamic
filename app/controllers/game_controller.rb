class GameController < ApplicationController
  def home
    render({:template => "my_templates/home"})
  end

  def roll
    @num_dice = (params.fetch("number_dice")).to_i
    @num_faces = (params.fetch("dice_faces")).to_i
    @rolls = []
    @num_dice.times do
      die = rand(1..@num_faces)
  
      @rolls.push(die)
    end
    render({:template => "my_templates/flexible"})
  end
end
