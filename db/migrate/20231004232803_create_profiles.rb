class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.belongs_to :adult, null: true, foreign_key: true
      t.belongs_to :child, null: true, foreign_key: true

      t.timestamps
    end
  end
end
