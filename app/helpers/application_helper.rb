module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title page_title
    base_title = "Facebook"
    page_title.empty? ? base_title : "#{base_title} | #{page_title}"
  end

  # Get user's gravatar according to his/her email.
  def gravatar_for user, options = {css_class: ""}
    gravatar_id = Digest::MD5::hexdigest user.email.downcase
    css_class = options[:css_class]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag gravatar_url, alt: user.name, class: "user-avatar #{css_class}"
  end
end
