3.times do
  school = School.create!(name: Faker::Address.city + " University",
                          location: Faker::Address.country,
                          motto: Faker::Company.catch_phrase)
 5.times do
   teacher = Teacher.create!(name: Faker::Name.name,
                            age: Faker::Number.between(30, 70),
                            hiredate: Faker::Date.between(900.days.ago, Date.today),
                            school_id: school.id)
  2.times do
    course = Course.create!(name: Faker::Company.profession.upcase + " 101",
                            duration: rand(2..12),
                            school_id: school.id,
                            teacher_id: teacher.id)
    7.times do
      student = Student.create!(name: Faker::Name.name,
                                age: Faker::Number.between(18, 40),
                                school_id: school.id,
                                course_id: course.id,
                                teacher_id: teacher.id)
    end
  end
 end
end
