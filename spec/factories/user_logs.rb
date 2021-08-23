# == Schema Information
#
# Table name: user_logs
#
#  last_job_apply_date :string
#  last_login_date     :date
#  user_account_id     :bigint
#
# Foreign Keys
#
#  user_logs_fk  (user_account_id => users.id)
#
FactoryBot.define do
  factory :user_log do
    
  end
end
