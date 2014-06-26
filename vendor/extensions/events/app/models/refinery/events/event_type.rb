module Refinery
  module Events
    class EventType < Refinery::Core::BaseModel

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, :uniqueness => true

      has_many :events
    end
  end
end
