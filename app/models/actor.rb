class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  # returns an array of all roles an actor has played
  def list_roles
    self.characters.map {|c| "#{c.name} - #{c.show.name}"}
  end
end