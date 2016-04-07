class CreateSeniorProject < ActiveRecord::Migration
  def change
    create_table :senior_projects do |t|
    	t.integer :student_id
    	t.string :status
    	t.string :end_term
    	t.string :cert_term_projected
    	t.string :cert_term_certified
    	t.string :ceremony_term
    	t.boolean :grad_app_submitted
    	t.datetime :grad_app_submitted_date

    	t.timestamps
    end

    add_index :senior_projects, :student_id
  end
end
