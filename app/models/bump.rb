class Bump < ActiveRecord::Base
  attr_accessible :vote, :user_id
  
  belongs_to :user
  has_many :voters
  
  acts_as_voteable
  
  voter.vote(voteable, vote)
  vote.unvote_for(voteable)
  
end 