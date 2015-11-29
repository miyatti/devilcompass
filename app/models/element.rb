class Element < ActiveRecord::Base
  has_many :users
  def self.judge(c,d)
    if c>= 1 then tc=1 elsif c<=-1 then tc=-1 else tc=0  end
    if d>= 1 then td=1 elsif d<=-1 then td=-1 else td=0  end

    where("\"LC\" = ? and \"LD\" = ?",tc*-1,td)
  end
end
