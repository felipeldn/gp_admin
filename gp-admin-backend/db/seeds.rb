# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times {
    Clinician.create(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: '12345', specialty: 'GP') 
}

3.times {
    Contact.create(date_time: '2016-06-22 19:10:25', duration: 30, contact_type: 'GP Consultation', patient_id: rand(1..5), clinician_id: rand(1..5))
}

10.times {
    HeartRate.create(value: rand(40..220), date_time: '2016-06-22 19:10:25', patient_id: rand(1..5)) 
}

10.times {
    BloodPressure.create(systolic_value: rand(100..220), diastolic_value: rand(60..90), date_time: '2016-06-22 19:10:25', patient_id: rand(1..5)) 
}

10.times {
    O2Sat.create(value: rand(60..100), date_time: '2016-06-22 19:10:25', patient_id: rand(1..5)) 
}

10.times {
    Temp.create(value: rand(35.5..38.5), date_time: '2016-06-22 19:10:25', patient_id: rand(1..5))
}

10.times {
    RespRate.create(value: rand(8..18), date_time: '2016-06-22 19:10:25', patient_id: rand(1..5)) 
}