class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.collect {|character| "#{character.actor.first_name} #{character.actor.last_name}"}
    end

    def build_network(call_letters:)
        network = Network.new(call_letters: call_letters)
        self.network = network
        network
    end
end