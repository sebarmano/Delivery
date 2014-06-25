class Item < ActiveRecord::Base
  belongs_to :meal
  belongs_to :order
end
