# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'pry-byebug'

puts "Destroing #{Application.all.size} aplications"
Application.destroy_all
puts "Destroing #{Opportunity.all.size} opportunities"
Opportunity.destroy_all
puts "Destroing #{Candidate.all.size} candidates"
Candidate.destroy_all
puts "Destroing #{Enterprise.all.size} enterprises"
Enterprise.destroy_all
puts "Destroing #{User.all.size} users"
User.destroy_all


user = User.create!(
        email: 'admin@dpn.com.br',
        username: "admin",
        password: "123456",
        admin: true
    )
    
puts "User #{user.username} created"

10.times do
    user = User.create!(
        email: Faker::Internet.email,
        username: Faker::Internet.username(specifier: 8),
        password: "123456"
    )
    puts "User #{user.username} created"
end

User.all.each do |u|
    unless user.admin
        
        if u.id.odd?
            enterprise = Enterprise.create!(
                user: u,
                name: Faker::Company.name,
                )
            puts "Enterprise #{enterprise.name} created"
        else
            candidate = Candidate.create!(
                user: u,
                name: Faker::Name.name
                )
            puts "Candidate #{candidate.name} created"
        end
    end
end

30.times do
    # binding.pry
    opportunity = Opportunity.create!(
        job_title: Faker::Job.title,
        job_description: Faker::Lorem.paragraph(sentence_count: 3..7),
        contract_type: Faker::Job.employment_type,
        enterprise: Enterprise.all.sample,
        )
    puts "Opportunity #{opportunity.job_title} created"
end

Opportunity.all.each do |opportunity|
    # binding.pry
    rand(1..7).times do
        application = Application.create!(
            opportunity: opportunity,
            candidate: Candidate.all.sample
            )
        puts "Application from #{application.candidate.name} to #{application.opportunity.job_title} created"
    end
end