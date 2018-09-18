class PagesController < ApplicationController
  def arena    
    @player1 = Character.all.sample
    @player2 = Character.all.sample
  end
  
  def custom_arena
    @player1 = Character.find(params['player1'])
    @player2 = Character.find(params['player2'])
  end
  
  def create_score
    
  end
  
  def show_score
    
  end
end
