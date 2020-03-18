class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :content
      t.references :author, index: true
      t.references :liker, index: true
      
      t.timestamps
    end
  end
end
