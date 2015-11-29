class Devil < ActiveRecord::Base
  has_many :users
  def self.judge(a,b,c,d)
    if a>= 0 then ta=1 else ta=-1 end
    if b>= 0 then tb=1 else tb=-1 end
    if c>= 1 then tc=1 elsif c<=-1 then tc=-1 else tc=0  end
    if d>= 1 then td=1 elsif d<=-1 then td=-1 else td=0  end
    where("\"LC\" = ? and \"LD\" = ? and \"PV\" = ? and \"OP\" = ?",-1*tc,td,ta,-1*tb)

  end

end
