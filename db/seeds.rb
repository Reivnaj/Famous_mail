require 'faker'

Faker::Config.locale = 'fr'

Email.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

10.times do |i|
	Email.create(object: Faker::Company.buzzword, body: Faker::ChuckNorris.fact)
end

puts "Seed done !"
