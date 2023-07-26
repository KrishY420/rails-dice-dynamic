# File: app/controllers/dice_controller.rb

class DiceController < ApplicationController
  def homepage
    # Nothing to do here, just render the homepage
  end
  
  def dynamic
    @num_dice = params[:number_of_dice].to_i
    @num_roll = params[:number_of_rolls].to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@num_roll)
      @rolls.push(die)
    end
  end
end
