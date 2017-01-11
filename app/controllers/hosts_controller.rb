class HostsController < ApplicationController
  def index
    @hosts = Host.page(params[:page]).per(10)
  end

  def show
    @host = Host.find(params[:id])
  end
end
