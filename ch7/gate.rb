# ゲートクラスです
class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare
  end

  # チケット額が足りるか計算
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = p to - from
    FARES[distance - 1]
  end

end
