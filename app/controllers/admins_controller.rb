class AdminsController < ApplicationController
  def new
    @admins = Admin.new
  end
  def create
    name = params[:admins][:name]
    password = params[:admins][:password]
    admin = Admin.find_by(name: name)
    if admin
      if admin.password == password
        # 如果登陆成功
        admin_login(admin.id)
        redirect_to admins_index_path
      else
        # 用户存在，密码错误
        @error_msg = "密码错误"
        render 'new'
      end
    else
        # 用户名不存在
        @error_msg = "用户名不存在"
        render 'new'
    end
  end

  def destroy
    admin_logout
    redirect_to root_url
  end


  def index
    if admin_logged_in?
      @articles_list = Article.order(created_at: :desc).all
    else
      redirect_to root_url
    end
  end
end
