class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => { :message => "El título ya está en uso" }
end
