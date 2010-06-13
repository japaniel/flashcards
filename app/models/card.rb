class Card < ActiveRecord::Base
  belongs_to :collection, :class_name => "Collection", :foreign_key => "collection_id"
end
