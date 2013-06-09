class CreateStaffingRequests < ActiveRecord::Migration
  def change
    create_table :staffing_requests do |t|
      t.string :job_code
      t.integer :user_id

      t.timestamps
    end
  end
end
