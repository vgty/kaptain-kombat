class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]
  # GET /fights
  def index
    @fights = Fight.all
    @characters = Character.all
  end

  # GET /fights/1
  def show
  end

  # GET /fights/new
  def new
    @fight = Fight.new
    @characters = Character.all
    @weapons = Weapon.all
  end

  # GET /fights/1/edit
  def edit
  end

  # POST /fights
  def create
    
    @fight = Fight.new(fight_params)
    @fights = Fight.all
    
    if @fight.save
      redirect_to @fight, notice: 'Fight was successfully created.'
    else
      render :index
    end
  end

  # PATCH/PUT /fights/1
  def update
    if @fight.update(fight_params)
      redirect_to @fight, notice: 'Fight was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fights/1
  def destroy
    @fight.destroy
    redirect_to fights_url, notice: 'Fight was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def fight_params
      params.require(:fight).permit(:player1_id, :player2_id, :weapon_player1_id, :weapon_player2_id)
    end
end
