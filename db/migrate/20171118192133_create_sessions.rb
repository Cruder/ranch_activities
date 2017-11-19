class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.integer :people
      t.belongs_to :activity

      t.timestamps
    end
  end
end
