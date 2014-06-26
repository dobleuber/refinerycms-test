module Refinery
  module Events
    module Admin
      class EventTypesController < ::Refinery::AdminController

        crudify :'refinery/events/event_type',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
