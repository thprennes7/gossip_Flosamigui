class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :sender, class_name: "User"
      t.belongs_to :recipient, class_name: "User"
      t.text :content
      t.timestamps
    end
  end
end
