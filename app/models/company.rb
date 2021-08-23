# == Schema Information
#
# Table name: companies
#
#  id                  :bigint           not null, primary key
#  company_name        :string
#  company_website_url :string
#  profile_description :string
#
class Company < ApplicationRecord
  has_many :jobs
  validates :company_name, uniqueness: true, presence:true
  validates :company_website,  uniqueness:true, presence:true

  scope :with_company_id, lambda {|id| joins(:job).where('jobs.company_id = ?', id) }


end
