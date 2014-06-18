class Produkt
  attr_accessor :name, :preis
  
  @@anzahl = 0
  
  def self.anzahl
    @@anzahl
  end
  
  def initialize(bezeichnung,preis)
    @name = bezeichnung
    @preis = preis
    @@anzahl += 1
  end
  
  def brutto(mwst_satz=19.0)
    (preis*(1+mwst_satz/100)).round(2)
  end
  def +(produkt)
    return @preis + produkt.preis
  end
end


class Buch < Produkt
  def isbn=(nummer)
    @isbn = nummer
  end
  
  def isbn
    return @isbn
  end
end

buch = Buch.new("Hans", 12.90)
puts buch.preis
puts buch.kind_of?