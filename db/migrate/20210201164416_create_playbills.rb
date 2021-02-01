class CreatePlaybills < ActiveRecord::Migration[6.0]
  def change
    create_table :playbills do |t|
      t.string :title
      t.text :about

      t.timestamps
    end
  end
end
