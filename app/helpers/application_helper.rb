module ApplicationHelper
  def LD(v)
    if v>= 1 then ret="Light" elsif v<=-1 then ret="Dark" else ret="Newtral"  end
    return ret
  end
  def LC(v)
    if v>= 1 then ret="Law" elsif v<=-1 then ret="Chaos" else ret="Newtral"  end
    return ret
  end
  def XY(v)
    if v>= 0 then ret="X" elsif v<0 then ret="Y" end
    return ret
  end
end
