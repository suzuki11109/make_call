require 'twilio-ruby'

# put your own credentials here - from twilio.com/user/account
account_sid = 'ACb04f7f58411fb4e1130389a1b90f8bca'
auth_token = 'bc78c5d3444dcc75e9d79d38327052de'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@call = @client.account.calls.create(
  # :from => '+66848684386',   # From your Twilio number
  :from => '+12512102626',   # From your Twilio number
  # :to => '+66944943960',     # To any number
  :to => '+14153161177',     # To any number
    # Fetch instructions from this URL when the call connects
  :url => 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient'
)
