class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text          :fact,                  null: false
      t.text          :memomemo,                  null: true
      t.text          :tyusyo,                  null: true
      t.text          :tennyou,                  null: true
      t.references    :user,                       null: false,foreign_key: true
      t.timestamps
    end
  end
end
