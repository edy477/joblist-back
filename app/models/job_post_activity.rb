# == Schema Information
#
# Table name: job_post_activities
#
#  apply_date  :date
#  job_post_id :bigint
#  user_id     :integer
#
# Foreign Keys
#
#  job_fk                  (job_post_id => jobs.id)
#  job_post_activities_fk  (user_id => users.id)
#
class JobPostActivity < ApplicationRecord
  belongs_to :subject, polymorphic: true, optional:true

end
