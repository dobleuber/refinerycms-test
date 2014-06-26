module Refinery
  module Events
    class Event < Refinery::Core::BaseModel
      self.table_name = 'refinery_events'

      attr_accessible :title, :date, :photo_id, :blurb, :position, :event_type_id

      acts_as_indexed :fields => [:title, :blurb]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      belongs_to :event_type
    end
  end
end
