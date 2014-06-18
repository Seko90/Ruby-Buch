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


apfel = Produkt.new("Apfel", 1.68)
buch = Produkt.new("Ruby", 39.90)
apfel2 = Produkt.new("Apfel", 1.68)
buch2 = Produkt.new("Ruby", 39.90)
apfel3 = Produkt.new("Apfel", 1.68)
buch3 = Produkt.new("Ruby", 39.90)
gesamt = apfel + buch
puts "#{gesamt}"
puts Produkt.anzahl