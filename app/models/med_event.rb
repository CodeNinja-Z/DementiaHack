class MedEvent < ActiveRecord::Base

belongs_to :patient


def send_text_message
  number_to_send_to = caregiver.phone_num

  account_sid = ENV["TWILIO_ACCOUNT_SID"]
  auth_token = ENV["TWILIO_AUTH_TOKEN"]
  our_twilio_number = ENV["TWILIO_PHONE_NUMBER"]

 @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.messages.create(
      :from => "#{our_twilio_num}",
      :to   => number_to_send_to
      :body => body
    )
  end


end
