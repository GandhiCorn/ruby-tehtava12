# kirjoita koodi tänne
def luokittelu(taulu)
	hash = {negatiivinen: [], positiivinen: [], parillinen: [], pariton: [], summa: 0}
	taulu.each do |luku|
		if luku < 0
			hash [:negatiivinen].push(luku)
		else 
			hash[:positiivinen].push(luku)
		end
		if luku%2 == 0
			hash[:parillinen].push(luku)
		else
			hash[:pariton].push(luku)
		end
		hash[:summa] += luku
	end

	hash.each_key do |avain|
		hash[avain].sort! if hash[avain].kind_of? Array
	end
	return hash
end