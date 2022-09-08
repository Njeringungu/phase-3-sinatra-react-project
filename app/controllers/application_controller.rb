class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/appointments" do
    appointments = Appointment.all.to_json

  end
  post "/appointments" do 
    appointment = Appointment.create(
      doctor_id: params[:doctor_id],
      patient_id: params[:patient_id],
      date: params[:date]
    )
    delete
  end


  get "/patients" do
    patients = Patient.all.to_json
  end
  
  post "/patients" do 

    patient = Patient.create(
      name: params[:name]
      
    )
    
  end
  get "/doctors" do
     doctors = Doctor.all.to_json
  end

post "/doctors" do 
    doctor = Doctor.create(
      name: params[:name],
      speciality: params[:speciality]
      
    )
    
  end
  
end