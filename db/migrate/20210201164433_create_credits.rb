class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.references :playbill, null: false, foreign_key: true
      t.string :name
      t.string :role
      t.text :bio
      t.boolean :cast

      t.timestamps
    end
  end
end
