class CreateNodeWithAncestors < ActiveRecord::Migration[6.1]
  def change
    create_view :node_with_ancestors
# Materialization seems problematic without adding refresh logic, and auth stuff stopped working when I added this and was using postgres -MK
#, materialized: true
  end
end
