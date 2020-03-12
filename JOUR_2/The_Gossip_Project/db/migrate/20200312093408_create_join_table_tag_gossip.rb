class CreateJoinTableTagGossip < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_gossips, id: false do |t|
      t.belongs_to :tag
      t.belongs_to :gossip
    end
  end
end
