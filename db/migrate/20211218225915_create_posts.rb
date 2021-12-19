class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
