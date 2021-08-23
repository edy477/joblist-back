# == Schema Information
#
# Table name: profiles
#
#  currency            :string
#  current_salary      :decimal(, )
#  first_name          :string
#  is_annually_monthly :string
#  last_name           :string
#  user_account_id     :bigint           not null, primary key
#
# Foreign Keys
#
#  profiles_fk  (user_account_id => users.id)
#
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
