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
