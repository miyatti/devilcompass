class Ideology < ActiveRecord::Base
  has_many :users
  def self.judge(a,b,c,d)
    if a>= 0 then ta=1 else ta=-1 end
    if b>= 0 then tb=1 else tb=-1 end
    if c>= 0 then tc=1 else tc=-1 end
    if d>= 0 then td=1 else td=-1 end
    where("A = ? and B = ? and C = ? and D = ?",ta,tb,tc,td)
  end
end
