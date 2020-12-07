class Pie < ApplicationRecord
  serialize :pieces, Array
  serialize :chunks, Array
end
