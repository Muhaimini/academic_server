# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Api::V1::Periode.count.zero?
  Api::V1::Periode.create!([
    { label: "2020 - 2023", desc: "Angkatan I" },
    { label: "2023 - 2026", desc: "Angkatan II" }
  ])
  puts "Periode created!"
else
  puts "Skip creating periode..."
end


if Api::V1::AcademicYear.count.zero?
  Api::V1::AcademicYear.create!([
    { label: "2020" },
    { label: "2021" },
    { label: "2022" },
    { label: "2023" },
    { label: "2024" },
    { label: "2025" },
    { label: "2026" }
  ])
  puts "Academic years created!"
else
  puts "Skip creating academic years..."
end


if Api::V1::Subject.count.zero?
  academic_year = Api::V1::AcademicYear.first
  if academic_year.nil?
    puts "No academic year found. Cannot create subjects."
  else
    Api::V1::Subject.create!([
      { name: "Math", academic_years_id: academic_year.id, min_score: 55 },
      { name: "Physic", academic_years_id: academic_year.id, min_score: 55 },
      { name: "Biology", academic_years_id: academic_year.id, min_score: 60 }
    ])
    puts "Subjects created successfully."
  end
else
  puts "Skip creating subjects..."
end


if Api::V1::Identity.count.zero?
  Api::V1::Identity.create([
    { city: "Serang", province: "Banten", details: "RT009/RW003", nationality: "WNI" }
  ])
  puts "Identity created!"
else
  puts "Skip creating identity..."
end


if Api::V1::Teacher.count.zero?
  identity = Api::V1::Identity.first
  if identity.nil?
    puts "No subject or identity found. Cannot create teachers."
  else
    Api::V1::Teacher.create!([
      { name: "Agus", identity_id: identity.id, is_active: true }
    ])
    puts "Teacher created successfully."
  end
else
  puts "Skip creating teacher..."
end


if Api::V1::Semester.count.zero?
  Api::V1::Semester.create!([
    { value: "1" },
    { value: "2" }
  ])
  puts "Semesters created successfully."
else
  puts "Skip create semeters..."
end


if Api::V1::TeacherSubject.count.zero?
  teacher = Api::V1::Teacher.first
  subject = Api::V1::Subject.first
  if teacher.nil? || subject.nil?
    puts "Failed to create teacher subjects."
  else
    Api::V1::TeacherSubject.create([
      { teachers_id: teacher.id, subjects_id: subject.id }
    ])
    puts "Teacher subject created successfully."
  end
else
  puts "Skip create teacher subjects..."
end


if Api::V1::Student.count.zero?
  identity = Api::V1::Identity.first
  periode = Api::V1::Periode.first
  semster = Api::V1::Semester.first
  if identity.nil? || periode.nil? || semster.nil?
    puts "Failed to create student"
  else
    Api::V1::Student.create!([
      { name: "Rival", identity_id: identity.id, periodes_id: periode.id, semesters_id: semster.id, is_active: true }
    ])
    puts "Student created successfully."
  end
else
  puts "Skip create stundent..."
end


# if Api::V1::AdministrationDetail.count.zero?
#   student = Api::V1::Student.first
#   if student.nil?
#     puts "Failed to create administration details"
#   else
#     Api::V1::AdministrationDetail.create!([
#       { student_id: student.id, label: "Biaya gedung", fee: 1000000 }
#     ])
#     puts "Administration details successfully created."
#   end
# else
#   puts "Skip create administration detail..."
# end


# if Api::V1::StudentAdministration.count.zero?
#   student = Api::V1::Student.first
#   periode = Api::V1::Periode.first
#   if student.nil? || periode.nil?
#     puts "Failed to create student administration"
#   else
#     Api::V1::StudentAdministration.create!(
#       { students_id: student.id, periodes_id: periode.id, total_fees: 1500000 }
#     )
#     puts "Student administration created successfuly."
#   end
# else
#   puts "Skip create student administration..."
# end
