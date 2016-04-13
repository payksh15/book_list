module ApplicationHelper
  def admin?(user)
    user.admin == 'true'
  end
end
