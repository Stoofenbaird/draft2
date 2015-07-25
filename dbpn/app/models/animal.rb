class Animal < ActiveRecord::Base
  belongs_to :listname
  belongs_to :breed
end
