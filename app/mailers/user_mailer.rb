class UserMailer < ActionMailer::Base
  default from: "id.email003@gmail.com"
  include Devise::Mailers::Helpers
  def confirmation_instructions(record)
    devise_mail(record, :confirmation_instructions)
  end

  def reset_password_instructions(record)
    devise_mail(record, :reset_password_instructions)
  end

  def unlock_instructions(record)
    devise_mail(record, :unlock_instructions)
  end

end
