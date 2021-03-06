class NodeAccess < ActiveRecord::Base
  set_table_name  :node_access
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :nid, :gid, :grant_view, :grant_update, :grant_delete
  validates_presence_of :nid, :gid, :realm, :grant_view, :grant_update, :grant_delete
end

