class UserSection < ActiveRecord::Base
  belongs_to :user
  belongs_to :street_sweep
end
