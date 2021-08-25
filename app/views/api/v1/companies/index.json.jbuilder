json.array! @companies do |company|
  json.id company.id
  json.company_name company.company_name
  json.company_website_url company.company_website_url

  json.profile_description company.profile_description
end

# json.jobs @jobs do |job|
# json.partial "job", obj: job
# end
