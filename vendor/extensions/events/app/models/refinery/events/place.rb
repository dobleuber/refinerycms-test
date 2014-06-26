module Refinery
  module Events
    class Place < Refinery::Core::BaseModel

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
