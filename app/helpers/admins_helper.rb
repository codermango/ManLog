module AdminsHelper
  def admin_login(admin_id)
    session[:admin_id] = admin_id
  end

  def admin_logout
    session.delete(:admin_id)
  end

  def admin_logged_in?
    !session[:admin_id].nil?
  end
end
