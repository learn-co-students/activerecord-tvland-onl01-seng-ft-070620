class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        char_name = self.characters.collect {|character| character.name}
        show_name = self.shows.collect {|show| show.name}

        "#{char_name.join} - #{show_name.join}".split("sgfsf")
    end
end