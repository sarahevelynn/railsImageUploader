module AuthorizationHelper
  private
  def confirm_login
    unless current_user
      redirect_to login_path, notice: 'Must be logged in!'
    end
  end
end
