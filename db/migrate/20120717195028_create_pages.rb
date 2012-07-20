class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :length
      t.string :content
      t.integer :book_id

      t.timestamps
    end
  end
end
