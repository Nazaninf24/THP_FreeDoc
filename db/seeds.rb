# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

#sert à nettoyer la base données à chaque fois
Doctor.destroy_all
Patient.destroy_all
Specialty.destroy_all
Appointment.destroy_all
City.destroy_all
Link.destroy_all

10.times do 
    array_specialty = ["Dermatologue","Urologue","Dentiste","Ophtamologue","Generaliste","Pediatre"]
    city = City.create(name: Faker::Address.city)
    doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: city)
    patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
    specialty = Specialty.create(name: array_specialty.sample)
    Appointment.create(doctor: doctor, patient: patient, city: city)
    Link.create(specialty: specialty, doctor: doctor)

end

