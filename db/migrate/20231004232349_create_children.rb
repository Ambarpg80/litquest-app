class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.belongs_to :adult, null: false, foreign_key: true

      t.timestamps
    end
  end
end
