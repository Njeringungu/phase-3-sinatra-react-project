puts "🌱 Seeding spices..."

# Seed your database here
Doctor.create([
    {
        name: "Michael Wafula",
        speciality: "Dentist"
    },
    {
        name: "Lucy Atieno",
        speciality: "Dermatologist"
    },
    {
        name: "Jane Wangui",
        speciality: "ENT"
    },
    {
        name: "James Mogaka",
        speciality: "Optician"
    }
])
Patient.create([
    {
        name: "Ali Abdi"
    },
    {
        name: "Ann Muthoni"
    },
    {
        name: "Leo Mwenda"
    },
    {
        name: "Mary Nkirote"
    }
])
Appointment.create([
   {
    doctor_id: 1,
    patient_id: 1,
    day: "Monday"
   },
   {
    doctor_id: 1,
    patient_id: 3,
    day: "Monday"
   },
   {
    doctor_id: 3,
    patient_id: 2,
    day: "Tuesday"
   },
   {
    doctor_id: 3,
    patient_id: 4,
    day: "Friday"
   },
   {
    doctor_id: 1,
    patient_id: 4,
    day: "Friday"
   }
])
puts "✅ Done seeding!"
