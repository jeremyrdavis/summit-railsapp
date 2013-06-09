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

class StaffingRequest < ActiveRecord::Base
  attr_accessible :job_code, :user_id
end
