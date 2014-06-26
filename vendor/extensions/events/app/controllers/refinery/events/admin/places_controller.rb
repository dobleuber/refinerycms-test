module Refinery
  module Events
    module Admin
      class PlacesController < ::Refinery::AdminController

        crudify :'refinery/events/place',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
