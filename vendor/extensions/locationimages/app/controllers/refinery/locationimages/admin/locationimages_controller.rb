module Refinery
  module Locationimages
    module Admin
      class LocationimagesController < ::Refinery::AdminController

        crudify :'refinery/locationimages/locationimage',
                :xhr_paging => true

      end
    end
  end
end
