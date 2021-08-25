# == Schema Information
#
# Table name: job_locations
#
#  id             :bigint           not null, primary key
#  city           :string
#  country        :string
#  state          :string
#  street_address :string
#  zip            :string
#
class JobLocation < ApplicationRecord
  has_many :jobs
end
