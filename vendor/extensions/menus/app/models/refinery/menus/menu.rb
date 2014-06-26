module Refinery
  module Menus
    class Menu < Refinery::Core::BaseModel
      self.table_name = 'refinery_menus'

      attr_accessible :title, :description, :photo_id, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
