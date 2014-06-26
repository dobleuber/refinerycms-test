module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        before_filter :find_all_event_types, :only => [:show]

        crudify :'refinery/events/event',
                :xhr_paging => true,
                :order => "date DESC",
                :sortable => false

        protected
        
          def find_all_event_types
            @event_types = Refinery::Events::EventType.all
          end

      end
    end
  end
end
