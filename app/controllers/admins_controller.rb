class AdminsController < ApplicationController
  def new
    
  end
  def create
    name = params[:admins][:name]
    password = params[:admins][:password]
    administrator = Administrator.find_by(name: name)
    
    if administrator.password == password 
      # 如果登陆成功
      session[:admin_id] = administrator.id
      redirect_to admins_index_path
    else
        # 如果登陆失败则显示提示信息
    end

  end

  def index
    
  end
end
