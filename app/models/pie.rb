class Pie < ApplicationRecord
  serialize :pieces, Array
  serialize :chunks, Array
  belongs_to :user
end
