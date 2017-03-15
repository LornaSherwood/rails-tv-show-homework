class User < ActiveRecord::Base

  has_many :farvourite_shows
  has_many :favourited_by, through: :favourite_shows, source: :user
end
