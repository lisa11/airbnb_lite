class ApplicationController < ActionController::Base
  before_action :authenticate_guest!

  protect_from_forgery with: :exception
end
