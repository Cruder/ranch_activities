class MergeModels < ActiveRecord::Migration[5.1]
  def change
    drop_table :sessions

    add_column :activities, :people, :integer, default: 0
  end
end
