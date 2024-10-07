module UsersHelper
  # 引数で渡されたユーザーのGravatar画像を返す
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravator_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravator_url, alt: user.name, class: "gravatar")
  end
end
