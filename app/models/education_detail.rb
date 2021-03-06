# == Schema Information
#
# Table name: education_details
#
#  certificate_degree_name   :string
#  completion_date           :date
#  institute_university_name :string
#  major                     :string
#  percentage                :string
#  starting_date             :date
#  user_account_id           :bigint
#
class EducationDetail < ApplicationRecord
  validates :user_account_id, presence: true
end
