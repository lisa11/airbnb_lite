class GuestsController < ApplicationController
  def index
    @guests = Guest.page(params[:page]).per(10)
  end

  def show
    @guest = Guest.find(params[:id])
  end
end
