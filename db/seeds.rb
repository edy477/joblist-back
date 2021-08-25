# This is not the place for test data
# Only use this to put the necessary setup for the app to work
# Separate the seeds in different Seed Service Objects
# The data can then be loaded with the rails db:seed command
require 'time'
unless AdminUser.count.positive?
  AdminUser.create!(email: 'admin@example.com',
                    password: 'password',
                    password_confirmation: 'password')
end

User.create(email: 'user@user.com', passwod: 'dtLy9Hh9rhEQg8j') # or create from admin backoffice

JobType.create(job_type: 'contract')
JobType.create(job_type: 'fulltime')

5.times do |_count|
  Job.create(job_type_id: 1, job_description: 'node js +2 years of experience, devops skills, etc')
end
5.times do |_count|
  JobLocation.create(street_address: 'N/A', city: 'Brasilia', state: 'Brasilia', country: 'Brasil',
                     zip: '4566')
end

5.times do |_count|
  Company.create(company_name: 'Tesla', company_website_url: 'www.tesla.com')
end
5.times do |_count|
  Company.create(company_name: 'Microsoft', company_website_url: 'www.microsoft.com')
end

5.times do |_count|
  JobPostActivity.create(user_account_id: 1, job_post_id: 2, apply_date: 1.week.ago)
end

test = JobPostActivity.create!(apply_date: Date.tomorrow, job_post_id: 2, user_id: 1)
