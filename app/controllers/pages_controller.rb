class PagesController < ApplicationController
  def arena    
    @player1 = Character.all.sample
    @player2 = Character.all.sample
  end
  
  def custom_arena
    binding.pry
    @player1 = Character.find(params['player1'])
    @player2 = Character.find(params['player2'])
  end
end
