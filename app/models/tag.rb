class Tag < ActiveRecord::Base
  has_many :solr_mappings
end
