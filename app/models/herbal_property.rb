class HerbalProperty < ActiveRecord::Base
  belongs_to :property
  belongs_to :herb
end
