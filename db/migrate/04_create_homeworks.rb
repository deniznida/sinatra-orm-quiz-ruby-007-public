class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :name
      t.integer :grade
      t.text :content
      t.datetime :submitted_at
    end
  end
end