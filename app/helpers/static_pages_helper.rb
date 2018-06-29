module StaticPagesHelper
  def gravatar_for(posts)
    #debugger
    gravatar_id = posts.id
    #debugger
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: posts.title , class: "gravatar")
  end
end
