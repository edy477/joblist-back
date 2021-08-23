# == Schema Information
#
# Table name: job_types
#
#  id       :bigint           not null, primary key
#  job_type :string
#
class JobType < ApplicationRecord
  has_many :jobs
  validates :job_type, presence:true

  #scope :job_type ->(jobtype) { where(job: Job.where(username: username)) }


end
