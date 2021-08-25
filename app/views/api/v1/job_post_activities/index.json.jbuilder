json.array! @jobs_applications do |job_application|
  json.job_post_id job_application.job_post_id
  json.user_id job_application.user_id
  json.apply_date job_application.apply_date
end
