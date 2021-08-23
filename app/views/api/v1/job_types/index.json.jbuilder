json.array! @job_types do |job_type|
  json.id job_type.id
  json.job_type job_type.job_type
end