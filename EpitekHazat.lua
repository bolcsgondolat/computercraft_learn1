function EszekHaKell(kaja)
  for i=1,16 do
    turtle.select(i)
    
    if turtle.getFuelLevel() < kaja then
      turtle.refuel(1)
    end
  end
end
	
function HatizsakKivalaszt(targy)
	for i=1,16 do
		info = turtle.getItemDetail(i)
		if info then
			if info.name == targy then
				turtle.select(i)
			else
				print(i .. ". mas van benne " .. info.name)
			end
		else
			print(i .. ". ures a zseb")
		end
	end
end

function EpitekFalat(magas, szeles)
  HatizsakKivalaszt("minecraft:planks")
  
  for i=1,magas do
	for o=1,szeles do
	  turtle.back()
	  turtle.place()
	end

	turtle.turnRight()
	turtle.turnRight()

	turtle.up(1)
    turtle.back()
  end
end

function EpitekUtsoFalat(magas, szeles)
  HatizsakKivalaszt("minecraft:planks")
  
  for i=1,magas do
	for o=1,szeles do
	  turtle.back()
	  turtle.place()
	end

	turtle.turnRight()
	turtle.turnRight()

	turtle.up(1)
    turtle.back()
  end
end

function OszlopFel (magas)
	for i=1,magas do
		turtle.up ()
		turtle.placeDown ()
	end	
end

function EpitekHazat(magas, szeles)

	for i=1,2 do 
		EpitekFalat(magas, szeles)
		turtle.forward()
		turtle.turnRight()
		for j=1,magas do
			turtle.down()
		end
	end
	
	for i=1,2 do
		EpitekFalat(magas,szeles+1)
		turtle.forward()
		turtle.turnRight()
		for j=1,magas do
			turtle.down()
		end
	end
 
	EpitekAjtot()
	EpitekAblakot()
	EpitekTetot()
end

function EpitekAjtot()
	turtle.back()
	turtle.turnRight()
	turtle.up()
	turtle.dig()
	turtle.down()
	turtle.dig()
	HatizsakKivalaszt("minecraft:dark_oak_door")
	turtle.place()
end

function EpitekAblakot()
	turtle.turnRight()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
	
	turtle.up()
	turtle.dig()
	
	HatizsakKivalaszt("minecraft:glass_pane")
	
	turtle.place()
	turtle.down()
end	

function EpitekTetot()
	HatizsakKivalaszt("minecraft:planks")
	
	for i=1,1 do
		turtle.forward()
		turtle.forward()
		
		turtle.placeDown()
		turtle.forward()
		turtle.placeDown()
		turtle.turnLeft()
		
		turtle.forward()
		turtle.placeDown()
		turtle.turnLeft()
		
		turtle.forward()
		turtle.placeDown()
		turtle.turnRight()
		
		turtle.forward()
		turtle.placeDown()
		turtle.turnRight()
		
		turtle.forward()
		turtle.placeDown()
		
	end
end

function MedenceAsas(szeles, hosszu, mely)
	for i=1,mely do
		for i=1,hosszu do
		
			for i=1,szeles do
				turtle.digDown()
				turtle.forward()
			end
		
			if i % 2 == 0 then
				turtle.turnRight()
				turtle.turnForward()
				turtle.turnRight()
				else
				turtle.turnLeft()
				turtle.turnForward()
				turtle.turnLeft()
			end
			
		end
		if mely>1 then
			turtle.down()
		end
	end
end

function MedenceFeltoltes()
	for i=1,mely do
		for i=1,hosszu do
		
			for i=1,szeles do
				turtle.()
				turtle.forward()
			end
		
			if i % 2 == 0 then
				turtle.turnRight()
				turtle.turnForward()
				turtle.turnRight()
				else
				turtle.turnLeft()
				turtle.turnForward()
				turtle.turnLeft()
			end
			
		end
		if mely>1 then
			turtle.down()
		end
	end
end

function MuugroTorony()

end

function Medence()
	MedenceAsas()
	MedenceFeltoltes()
	MuugroTorony()
end


-- EszekHaKell(100)
-- EpitekHazat(3, 3)
-- EpitekTetot()

MedenceAsas(2, 3, 1)
