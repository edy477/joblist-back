json.array! @jobs do |job|
 json.id job.id
 json.posted_by_id job.posted_by_id
 json.job_type_id job.job_type_id
 json.job_description job.job_description
 json.company_id job.company_id
 json.job_location_id job.job_location_id
 json.job_type_id job.job_type_id
 json.is_active job.is_active
end

#json.jobs @jobs do |job|
# json.partial "job", obj: job
#end