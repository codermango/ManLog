class AdminsController < ApplicationController
  def new
    
  end
  def create
    name = params[:admins][:name]
    password = params[:admins][:password]
    administrator = Administrator.find_by(name: name)
    
    if administrator
      if administrator.password == password
        # 如果登陆成功
        admin_login(administrator.id)
        redirect_to admins_index_path
      else
        # 用户存在，密码错误
      end
    else
        # 用户名不存在
    end
  end

  def destroy
    admin_logout
    redirect_to root_url
  end


  def index
    @articles_list = Article.order(:updated_at).all
  end
end
