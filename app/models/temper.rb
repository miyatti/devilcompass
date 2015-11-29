class Temper < ActiveRecord::Base
  has_many :users
  def self.judge(a,b)
    if a>= 1 then ta=1 elsif a<=-1 then ta=-1 else ta=0  end
    if b>= 1 then tb=1 elsif b<=-1 then tb=-1 else tb=0  end
    where("PV =? and OP=?",ta,tb*-1)
  end
end
