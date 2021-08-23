json.array! @job_locations do |job_location|
  json.id job_location.id
  json.city job_location.city
  json.country job_location.country
  json.state job_location.state
  json.street_address job_location.street_address
  json.zip job_location.zip
end