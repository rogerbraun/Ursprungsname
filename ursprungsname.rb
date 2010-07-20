#encoding: utf-8
class Array

  def pick 
    self[rand(self.length)]
  end
end


def ursprungsname(name)
  name.strip!
  standard_laenge = 3
  laenge = standard_laenge + rand(2)
  vokale = ["a","e","i","o","u"]
  konsonanten = name.split("").reject{|x| x == " " || vokale.include?(x)} + ["sh","hr","'"]
  
  uname = ""
  for i in (1..laenge)
    uname = uname + konsonanten.pick + vokale.pick
  end

  uname.capitalize
end
name = ARGV[0].dup
puts "Dein Ursprungsname:"
10.times {
puts ursprungsname(name)
}
puts "Aus den Bereichen von El´Shaddei grüßt dich, Melek Metatron."
