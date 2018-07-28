class CreateMyposts < ActiveRecord::Migration[5.1]
  def change
    create_table :myposts do |t|
      t.text :title
      t.text :author
      t.integer :price
      t.integer :genre_id
      t.text :content

      t.timestamps
    end
  end
end
