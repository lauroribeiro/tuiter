class CreateTuites < ActiveRecord::Migration[6.1]
  def change
    create_table :tuites do |t|
      t.text :tuite

      t.timestamps
    end
  end
end
