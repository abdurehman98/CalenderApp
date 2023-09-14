class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :taskname
      t.text :taskdetails
      t.datetime :taskday
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
