class CreateNodeDescendants < ActiveRecord::Migration[6.1]
  def change
    create_view :node_descendants, materialized: true
    add_index :node_descendants, [:base_id, :id, :distance], unique: true
    add_index :node_descendants, [:id]
    add_index :node_descendants, [:distance]
  end
end