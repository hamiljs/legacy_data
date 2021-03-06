class User < ActiveRecord::Base
  set_primary_key :uid

  # Relationships
  

  # Constraints
  validates_numericality_of :sort, :threshold, {:allow_nil=>true}
  validates_numericality_of :mode, :signature_format, :created, :access, :login, :status
  validates_presence_of :name, :pass, :mode, :theme, :signature, :signature_format, :created, :access, :login, :status, :language, :picture
  validates_uniqueness_of :name
end

