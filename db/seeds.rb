# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'
require 'time'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'coaches.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
name = ''
csv.each do |row|
  if name != row['Name']
    coach = Coach.new
    coach.name = row['Name']
    coach.timezone = row['Timezone']
    coach.save
    name = row['Name']
  end
  booking = Time.parse(row['Available at'])
  available_until = Time.parse(row['Available until'])
  while booking < available_until
    coach = Coach.find_by(name:)
    schedule = Schedule.new
    schedule.day_of_week = row['Day of Week']
    schedule.coach_id = coach.id
    schedule.booking_time = booking
    schedule.save
    booking += 60 * 30
  end
end
Client.create(name: 'Luna')
