module ApplicationHelper
  def avatar_image(user)
    if user.photo
      return user.photo.path
    else
      return "http://placehold.it/150x150"
    end
  end
end
