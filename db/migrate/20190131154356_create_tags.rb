class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.belongs_to :potin, index: true
      t.string :name
      t.timestamps
    end
  end
end
