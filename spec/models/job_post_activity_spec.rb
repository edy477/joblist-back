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
require 'rails_helper'

RSpec.describe JobPostActivity, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
