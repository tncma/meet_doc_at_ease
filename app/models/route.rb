class Route < ActiveRecord::Base
  serialize :directions, Array
end
