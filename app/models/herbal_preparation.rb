class HerbalPreparation < ActiveRecord::Base
  belongs_to :preparation
  belongs_to :herb
end
