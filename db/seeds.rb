require 'faker'

10.times do
  Instructor.create(name: Faker::Name.name,
                   email_address: Faker::Internet.email,
                   department_id: rand(10))
end

10.times do
  Department.create(name: Faker::Commerce.department(3, true))
end

10.times do
  Course.create(name: Faker::Lorem.sentence(3),
                start_date: Faker::Time.between(Date.today, Date.today + 50).strftime("%Y-%m-%d"),
                end_date: Faker::Time.between(Date.today + 51, Date.today + 100).strftime("%Y-%m-%d"),
                location: Faker::Address.city,
                time: Time.now)
end

10.times do
  InstructorsSchedule.create(instructor_id: rand(10),
                            course_id: rand(10))
end
