module UsersHelper
  def admin?
    user = User.find(session[:user_id])
    if user.admin == true
      return true
    end
  end
end
