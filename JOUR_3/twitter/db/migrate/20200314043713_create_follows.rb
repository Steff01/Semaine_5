class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.references :follower, index: true
      t.references :following, index: true
      t.timestamps
    end
  end
end
