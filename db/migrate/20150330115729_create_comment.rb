class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :content

      t.timestamps
    end
  end
end
