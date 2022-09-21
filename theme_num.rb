#Crée un theme de numerologie 



a = ARGV[0]
b = ARGV[1]
c = ARGV[2]
d = ARGV[3]
e = ARGV[4]


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



	puts "le cycle en jour est #{jour}" 
	puts "le cycle en mois est #{mois}"
	puts "le cycle en année est #{annee}"
	puts "le numéro de la mission est #{mission}"
	puts "le numéro de l'action1 est #{action1}"
	puts "le numéro de l'action2 est #{action2}"
	puts "le numéro de l'action3 est #{action3}"
	puts "le numéro de l'action4 est #{action4}"
end 

def calculateur_nom(nom , nom1 , nom2=nil , nom3=nil ,nom4=nil)





#calculateur_date(a)





