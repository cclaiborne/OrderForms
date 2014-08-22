class Zipcode < ActiveRecord::Base
  def self.search(query)
    where("zip like ?", "%#{query}%")
  end
  scope :selected, lambda { where(:spot1 => "t") | where(:spot2 => "t") | where(:spot3 => "t") | where(:spot4 => "t") | where(:spot5 => "t") }
end
