class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/doctors" do
    Doctor.all.to_json(include: :patients)
  end

  get "/patients" do
    Patient.all.to_json
  end

  get "/appointments" do
    Appointment.all.to_json(include: { doctor: { include: :patients } })

  end

#   post '/appointment' do 
#     newAppointment = Appointment.create
# end
end