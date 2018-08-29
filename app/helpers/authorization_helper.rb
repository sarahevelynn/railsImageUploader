module AuthorizationHelper
  private
  def confirm_login
    unless current_user
      redirect_to login_path, alert: 'Must be logged in!'
    end
  end
end
