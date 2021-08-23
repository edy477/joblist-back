# == Schema Information
#
# Table name: jobs
#
#  id                :bigint           not null, primary key
#  created_date      :date
#  is_active         :string
#  is_company_hidden :string
#  job_description   :string
#  company_id        :bigint           not null
#  job_location_id   :bigint           not null
#  job_type_id       :bigint           not null
#  posted_by_id      :bigint           not null
#
# Foreign Keys
#
#  companies_fk     (company_id => companies.id)
#  job_location_fk  (job_location_id => job_locations.id)
#  jobs_fk          (job_type_id => job_types.id)
#
require 'rails_helper'

RSpec.describe Job, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
