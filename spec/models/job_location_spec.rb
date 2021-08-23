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
require 'rails_helper'

RSpec.describe JobLocation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
