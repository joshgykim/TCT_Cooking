# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  bio        :text             not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
