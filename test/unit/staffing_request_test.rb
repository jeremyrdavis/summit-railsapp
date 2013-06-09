# == Schema Information
#
# Table name: staffing_requests
#
#  id         :integer          not null, primary key
#  job_code   :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StaffingRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
