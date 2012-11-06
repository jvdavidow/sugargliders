class Post < ActiveRecord::Base
  attr_accessible :body, :reading_id, :user_id
  
  belongs_to :user
  has_one :reading
  has_many :bumps
  
  #acts_as_voteable
  #
  #voter.vote(voteable, vote)
  #vote.unvote_for(voteable)
  
end 