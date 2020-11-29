class InboxMailbox < ApplicationMailbox

  before_processing :user

  def process
    return if user.nil?
    if mail.parts.present?
      Feedback.create user_id: @user.id, content: mail.parts[0].body.decoded
    else
      Feedback.create user_id: @user.id, content: mail.decoded
    end
  end

  def user
    @user ||= User.find_by(email: mail.from)
  end
end
