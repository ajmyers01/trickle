class Icon < ActiveRecord::Base
  belongs_to :habit

  MIND = 1
  BODY = 2
  SOUL = 3
end
