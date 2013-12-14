# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
MeetDocAtEase::Application.initialize!
Time::DATE_FORMATS[:date_time] = "%d-%b-%Y %I:%M %p"

