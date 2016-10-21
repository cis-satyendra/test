class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :grade, :string
      t.string :priority, :string
      t.string :description, :string
      t.string :standard, :string
      t.string :topic, :string

      t.timestamps null: false
    end
  end
end
