class CreateInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :invites do |t|
      t.string :email
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
