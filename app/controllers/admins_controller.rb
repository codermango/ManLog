class AdminsController < ApplicationController
  def new
    @administrator = Administrator.new
  end
  def create
    name = params[:admins][:name]
    password = params[:admins][:password]
    debugger
  end
end
