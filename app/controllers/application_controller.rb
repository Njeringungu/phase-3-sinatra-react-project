class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/appointments" do
    appointments = Appointment.all.to_json

  end

get "/appointments/patients/doctors" do
 appointment = Appointment.all.to_json(only: [:patient_id, :doctor_id, :date], include: {doctor: {only: [:name, :speciality], include: {patients: {only: [:name]}}}})
end

get "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.to_json
  end

post "/appointments" do 
  appointment = Appointment.create(
      doctor_id: params[:doctor_id],
      patient_id: params[:patient_id],
      date: params[:date]
    )
  end

patch "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update(
      doctor_id: params[:doctor_id],
      patient_id: params[:patient_id],
      date: params[:date]
    )
    appointment.to_json
  end

delete "/appointments/:id" do
      appointment = Appointment.find(params[:id])
      appointment.destroy
      appointment.to_json
  end

get "/patients" do
    patients = Patient.all.to_json
  end

get "/patients/:name" do

patient = Patient.find_by(name: params[:name])
patient.to_json
end
  
  
post "/patients" do 
  patient = Patient.create(
      name: params[:name]
      )
  patient.to_json
  end

delete "/patients/:id" do
    patient = Patient.find(params[:id])
      patient.destroy
      patient.to_json
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
  get "/doctors/:name" do
    doctor = Doctor.find_by(name: params[:name])
    doctor.to_json
    end
end



