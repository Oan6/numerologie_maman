#Crée un theme de numerologie 
class Integer 
  def red 
    "\e[31m#{self}\e[0m"
  end 
  def green
  	"\e[32m#{self}\e[0m"
  end 
  def cyan
  	"\e[36m#{self}\e[0m"
  end
  def yellow
  	"\e[33m#{self}\e[0m"
  end
  def underline
  	"\e[4m#{self}\e[0m"
  end
end 

a = ARGV[0]
b = ARGV[1]
c = ARGV[2]
d = ARGV[3]
e = ARGV[4]
f = ARGV[5]
#manque l'exception 11/2
def calculateur_date(date)

	jour = date[0].to_i + date[1].to_i
	jour = jour.to_s
	if jour.to_s.length != 1 
		jour = jour[0].to_i + jour[1].to_i
	end 

	mois = date[3].to_i + date[4].to_i
	mois = mois.to_s
	if mois.to_s.length != 1 
		mois = mois[0].to_i + mois[1].to_i
	end

	annee = date[6].to_i + date[7].to_i + date[8].to_i + date[9].to_i
	annee = annee.to_s
	if annee.length != 1 
		annee = annee[0].to_i + annee[1].to_i
	end

	mission = jour.to_i + mois.to_i + annee.to_i
	mission = mission.to_s
	if mission.to_s.length != 1 
		mission = mission[0].to_i + mission[1].to_i
	end

	action1 = jour.to_i + mois.to_i
	action1 = action1.to_s
	if action1.to_s.length != 1 
		action1 = action1[0].to_i + action1[1].to_i
	end

	action2 = jour.to_i + annee.to_i
	action2 = action2.to_s
	if action2.to_s.length != 1 
		action2 = action2[0].to_i + action2[1].to_i
	end

	action3 = action1.to_i + action2.to_i
	action3 = action3.to_s
	if action3.to_s.length != 1 
		action3 = action3[0].to_i + action3[1].to_i
	end

	action4 = mois.to_i + annee.to_i
	action4 = action4.to_s
	if action4.to_s.length != 1 
		action4 = action4[0].to_i + action4[1].to_i
	end



	puts "le cycle en jour est #{jour.to_i.cyan}" 
	puts "le cycle en mois est #{mois.to_i.cyan}"
	puts "le cycle en année est #{annee.to_i.cyan}"
	puts "le numéro de la mission est #{mission.to_i.cyan}"
	puts "le numéro de l'action1 est #{action1.to_i.cyan}"
	puts "le numéro de l'action2 est #{action2.to_i.cyan}"
	puts "le numéro de l'action3 est #{action3.to_i.cyan}"
	puts "le numéro de l'action4 est #{action4.to_i.cyan}"
end 

def calculateur_nom(nom , nom1 , nom2=nil , nom3=nil ,nom4=nil)

	sa = [nil]
	sa = nom + nom1 
	if nom2 != nil 
		sa = sa + nom2
	end 
	if nom3 != nil 
		sa = sa +nom3 
	end 
	if nom4 != nil 
		sa = sa +nom4
	end 
	sa = sa.downcase
	t1 = 0
	t2 = 0 
	t3 = 0
	t4 = 0
	t5 = 0
	t6 = 0
	t7 = 0
	t8 = 0
	t9 = 0
	for i in 0..sa.length 
		if sa[i] == 'a' || sa[i] == 'j' || sa[i] == 's'
			t1 = t1 + 1 
		end
		if sa[i] == 'b' || sa[i] == 'k' || sa[i] == 't'
			t2 = t2 + 1 
		end
		if sa[i] == 'c' || sa[i] == 'l' || sa[i] == 'u'
			t3 = t3 + 1 
		end
		if sa[i] == 'd' || sa[i] == 'm' || sa[i] == 'v'
			t4 = t4 + 1 
		end
		if sa[i] == 'e' || sa[i] == 'n' || sa[i] == 'w'
			t5 = t5 + 1 
		end
		if sa[i] == 'f' || sa[i] == 'o' || sa[i] == 'x'
			t6 = t6 + 1 
		end
		if sa[i] == 'g' || sa[i] == 'p' || sa[i] == 'y'
			t7 = t7 + 1 
		end
		if sa[i] == 'h' || sa[i] == 'q' || sa[i] == 'z'
			t8 = t8 + 1 
		end
		if sa[i] == 'i' || sa[i] == 'r' 
			t9 = t9 + 1 
		end

	end

	puts "il y a #{t1.red} fois le nombre 1"
	puts "il y a #{t2.red} fois le nombre 2"
	puts "il y a #{t3.red} fois le nombre 3"
	puts "il y a #{t4.red} fois le nombre 4"
	puts "il y a #{t5.red} fois le nombre 5"
	puts "il y a #{t6.red} fois le nombre 6"
	puts "il y a #{t7.red} fois le nombre 7"
	puts "il y a #{t8.red} fois le nombre 8"
	puts "il y a #{t9.red} fois le nombre 9"
end    



calculateur_date(a)
calculateur_nom(b,c,d,e,f)





