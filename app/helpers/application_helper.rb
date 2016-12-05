module ApplicationHelper
  def avatar_image(user)
    if user.photo?
      return user.photo.path
    else
      return "default_avatar.png"
    end
  end
end
