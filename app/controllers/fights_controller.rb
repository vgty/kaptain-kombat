class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]

  def index
    @fights = Fight.all
    @characters = Character.all
  end

  def show
  end

  def new
    @fight = Fight.new
    @characters = Character.all
    @weapons = Weapon.all
  end

  def edit
  end

  def create
    @fight = Fight.new(fight_params)
    
    if @fight.save
      redirect_to :controller => 'pages',
                  :action => 'custom_arena',
                  :fight_id => @fight.id    
    else
      render :new
    end
  end

  def update
    if @fight.update(fight_params)
      redirect_to @fight, notice: 'Fight was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @fight.destroy
    redirect_to fights_url, notice: 'Fight was successfully destroyed.'
  end

  private

    def set_fight
      @fight = Fight.find(params[:id])
    end
    
    def fight_params
      params.require(:fight).permit(:player1_id, :player2_id, :weapon_player1_id, :weapon_player2_id)
    end
end
