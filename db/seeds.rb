# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'date'


# City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


100.times do 
  city = City.create!(
    city_name: Faker::Address.city,
  )
end

100.times do 
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city_id: rand(1..100)
  )
end

specialties = ["Allergy and Immunology","Anesthesiology", "Cardiology", "Colon and Rectal Surgery", "Dermatology",   "Emergency Medicine", "Family Medicine", "Forensic Pathology", "General Surgery", "Genetics and Genomics", "Hospice and Palliative Medicine", "Hospital Medicine", "Internal Medicine", "Neurology", "Obstetrics and Gynecology", "Ophthalmic Surgery", "Pediatrics", "Physical Medicine and Rehabilitation", "Plastic Surgery", "Psychiatry", "Vascular Surgery"]
(specialties.length).times do |x|
  specialty_1 = Specialty.create!(
    specialty_name: specialties[x]
    )
end

200.times do
  jointable = JoinTableDoctorSpecialty.create(
    doctor_id: rand(1..25),
    specialty_id: rand(1..specialties.length)
  )
end

100.times do 
  patient = Patient.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city_id: rand(1..100)
  )
end

100.times do 
  appointments = Appointment.create!(
    date: Faker::Date.between(from: '2010-01-01', to: '2023-01-01'), 
    city_id: rand(1..100),
    doctor_id: rand(1..100),
    patient_id: rand(1..100)
  )
end