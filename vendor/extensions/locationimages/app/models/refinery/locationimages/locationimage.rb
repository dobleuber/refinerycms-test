module Refinery
  module Locationimages
    class Locationimage < Refinery::Core::BaseModel
      self.table_name = 'refinery_locationimages'

      attr_accessible :title, :photo_id, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
