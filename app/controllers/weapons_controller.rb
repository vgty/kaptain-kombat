class WeaponsController < ApplicationController
  before_action :set_weapon, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @weapon = Weapon.new
  end

  def edit
  end

  def create
    @weapon = Weapon.new(weapon_params)

    if @weapon.save
      redirect_to @weapon, notice: 'Weapon was successfully created.'
    else
      render :new
    end
  end

  def update
    if @weapon.update(weapon_params)
      redirect_to @weapon, notice: 'Weapon was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @weapon.destroy
    redirect_to weapons_url, notice: 'Weapon was successfully destroyed.'
  end

  private
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def weapon_params
      params.require(:weapon).permit(:name, :attack_force)
    end
end
