class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :length
      t.integer :awesomeness

      t.timestamps
    end
  end
end
