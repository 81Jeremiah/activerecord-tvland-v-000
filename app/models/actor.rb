class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    puts "#{self.show.name} - #{self.character.name}"
    self.shows.each{|show| puts "#{show.name}"}
  end
end
