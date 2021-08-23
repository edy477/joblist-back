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
class Profile < ApplicationRecord

end
