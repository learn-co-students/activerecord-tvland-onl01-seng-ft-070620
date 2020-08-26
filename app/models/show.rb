class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    actors_array = self.actors.collect do |actor|
      name = "#{actor.first_name} #{actor.last_name}"
    end
  end
end