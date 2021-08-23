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
require 'rails_helper'

RSpec.describe UserLog, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
