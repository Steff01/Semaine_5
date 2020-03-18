class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, index: true
      t.references :tweet, index: true
      t.timestamps
    end
  end
end
