require 'spec_helper'

describe StaffingRequest do

  let(:user) { FactoryGirl.create(:user) }
  before { @staffing_request = user.staffing_requests.build(job_code:"SA") }

  it { should respond_to(:job_code) }
  it { should respond_to(:user) }
  it { should respond_to(:user_id) }

end