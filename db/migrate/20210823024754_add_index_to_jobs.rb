class AddIndexToJobs < ActiveRecord::Migration[6.0]
  def change
    add_index :jobs, :id
    add_index :jobs, :company_id
    add_index :jobs, :job_type
  end
end
