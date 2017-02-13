class Article < ApplicationRecord
  has_many :comments, :dependent => :delete_all
  has_many :taggings, :dependent => :delete_all
  has_many :tags, through: :taggings, :dependent => :delete_all

  validates :title, :body, presence: true
  
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

end
