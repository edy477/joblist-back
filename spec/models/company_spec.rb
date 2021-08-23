# == Schema Information
#
# Table name: companies
#
#  id                  :bigint           not null, primary key
#  company_name        :string
#  company_website_url :string
#  profile_description :string
#
require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
