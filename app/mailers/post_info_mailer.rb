class PostInfoMailer < ApplicationMailer
  default   to: -> { User.pluck(:email) },
            from: 'notifications@example.com'

  def post_info_email(post)
    @post = post
    mail(subject: "New Post: #{@post.name}")
  end
end
