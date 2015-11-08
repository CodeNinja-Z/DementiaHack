class Patient < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_many :caregivers

  def is_clinician?
    false
  end

  def is_patient?
    true
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def send_text_message(body)
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    our_twilio_num = ENV["TWILIO_PHONE_NUMBER"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.messages.create(
      :from => "#{our_twilio_num}",
      :to   => phone_number,
      :body => body
    )
  end
end
