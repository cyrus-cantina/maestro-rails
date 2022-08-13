class CreateWorkplans < ActiveRecord::Migration[7.0]
  def change
    create_table :workplans do |t|
      t.string :name
      t.references :workplan_category, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
