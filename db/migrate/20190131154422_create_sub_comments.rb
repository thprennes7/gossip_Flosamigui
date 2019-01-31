class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      t.belongs_to :user, index: true
      t.text :content
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
