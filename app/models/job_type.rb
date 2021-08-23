# == Schema Information
#
# Table name: job_types
#
#  id       :bigint           not null, primary key
#  job_type :string
#
class JobType < ApplicationRecord
  has_many :jobs
  validate :job_type, presence:true, uniquenes:true

  #scope :job_type ->(jobtype) { where(job: Job.where(username: username)) }


end
