# == Schema Information
#
# Table name: experience_details
#
#  company_name         :string
#  description          :string
#  end_date             :string
#  is_current_job       :string
#  job_location_city    :string
#  job_location_country :string
#  job_location_state   :string
#  job_title            :string
#  start_date           :string
#  user_account_id      :bigint
#
# Foreign Keys
#
#  experience_details_fk  (user_account_id => profiles.user_account_id)
#
FactoryBot.define do
  factory :experience_detail do
    
  end
end
