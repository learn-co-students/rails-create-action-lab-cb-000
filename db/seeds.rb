# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_students(names_arr)
  names_arr.each do |name|
    @student = Student.new
    @student.first_name = name.split(" ").first
    @student.last_name = name.split(" ").last
    @student.save
  end

  Student.count == names_arr.count ? "Created #{Student.count} Students" : "Created #{Student.count} Students, Indexes #{++Student.count} Through #{Student.count + names_arr.count}"
end

NAMES = ["Archie Andrews", "Veronica Lodge", "Cheryl Blossom", "Jughead Jones", "Betty Cooper"]

seed_students(NAMES)
