class CreateKycs < ActiveRecord::Migration[7.1]
  def change
    create_table :kycs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :document

      t.timestamps
    end
  end
end
