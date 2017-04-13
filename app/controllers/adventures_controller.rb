# frozen_string_literal: true
class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
  end

  def show
    load_adventure
  end

  def new
    @adventure = Adventure.new
  end

  def edit
    load_adventure
  end

  def create
    @adventure = Adventure.new(adventure_params)
    if @adventure.save
      redirect_to @adventure, notice: 'Adventure was successfully created.'
    else
      render :new
    end
  end

  def update
    load_adventure
    if @adventure.update(adventure_params)
      redirect_to @adventure, notice: 'Adventure was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    load_adventure
    @adventure.destroy
    redirect_to adventures_url, notice: 'Adventure was successfully destroyed.'
  end

  private

  def load_adventure
    @adventure = Adventure.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adventure_params
    params.require(:adventure).permit(:name, :description, :picture)
  end
end
