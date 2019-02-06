name = "abra catcher route 25"
author = "come ezreal are"
description = "you can catch abra near to celurean city"

function onPathAction()
    if isPokemonUsable(1) then
	    if getMapName() == "Pokecenter Cerulean" then
		    moveToMap() == "Cerulean City"
        elseif getMapName() == "Cerulean City" then
            moveToMap("Route 24")         	
        elseif getMapName() == "Route 24" then	
                moveToMap("Route 25")
        elseif getMapName() == "Route 25" then				
        moveToGrass()
        end
	
    else 
        if getMapName() == "Route 25" then
            moveToMap("Route 24")
        elseif getMapName() == "Route 24" then
            moveToMap("Cerulean City")
        elseif getMapName() == "Cerulean City" then
		    moveToMap("Pokecenter Cerulean")
        elseif getMapName() == "Pokecenter 	Cerulean" then		
            usePokecenter()
		end
	end
end	

function onBattleAction()
   if isWildBattle() and isOpponentShiny() then
		if useItem("Ultra Ball") or useItem("Great Ball") or useItem("Pokeball") then
			return
		end
	end
	if getActivePokemonNumber() == 1 then
		return attack() or sendUsablePokemon() or run() or sendAnyPokemon()
	else
		return run() or attack() or sendUsablePokemon() or sendAnyPokemon()
		end
	end
	
	
	



