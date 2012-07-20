class Page < ActiveRecord::Base
  attr_accessible :book_id, :content, :length
  belongs_to :book 
end
