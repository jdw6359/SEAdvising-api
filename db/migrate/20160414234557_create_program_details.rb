class CreateProgramDetails < ActiveRecord::Migration
  def change
    create_table :program_details do |t|
      t.integer :student_id
      t.string :academic_plan
      t.string :application_domain
      t.datetime :application_domain_submitted_date
      t.string :minor
      t.datetime :minor_submitted_date

      t.timestamps
    end
  end
end
