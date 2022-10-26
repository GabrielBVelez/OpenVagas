class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :user, foreign_key: true
      t.references :positions, foreign_key: true

      t.timestamps
    end
  end
end
