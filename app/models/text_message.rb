  def send_text_message(body)
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    our_twilio_num = ENV["TWILIO_PHONE_NUMBER"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.messages.create(
      :from => "#{our_twilio_num}",
      :to   => phone_num,
      :body => body
    )
  end

  def forgot_meds_text
    "#{patient.full_name} missed #{schedule_event.id} medication"
  end 

  def wrong_meds_text
    "#{patient.full_name} has taken the wrong medication for #{schedule_event.id}"
  end 

  def reminder_text
    "Hello #{patient.first_name}! This is a friendly reminder to take your medication right now."
  end

  def caregiver_wrong_meds_text_sender
    caregivers.each do |caregiver|
      caregiver.send_text_message(wrong_meds_text)
    end
  end

  def caregiver_forgot_meds_text_sender
    caregivers.each do |caregiver|
      caregiver.send_text_message(forgot_meds_text)
    end
  end

  def patient_text_sender
    patient.send_text_message(reminder_text)
  end 

#   def make_call
#     account_sid = ENV["TWILIO_ACCOUNT_SID"]
#     auth_token = ENV["TWILIO_AUTH_TOKEN"]
#     our_twilio_num = ENV["TWILIO_PHONE_NUMBER"]
 
# # set up a client to talk to the Twilio REST API 
#   @client = Twilio::REST::Client.new account_sid, auth_token 
 
#   @client.account.calls.create({
#     :to => '+14169028655', 
#     :from => "#{our_twilio_num}", 
#     :url => 'http://thenextmove.ca/new/call.xml', 
#     :application_sid => 'AP7007481f8cc9726b537ba672a6620692', 
#     :method => 'GET',  
#     :fallback_method => 'GET',  
#     :status_callback_method => 'GET',    
#     :record => 'false'
#   })
#   end 


