

///jar

/obj/item/reagent_container/food/drinks/jar
	name = "empty jar"
	desc = "A jar. You're not sure what it's supposed to hold."
	icon_state = "jar"
	item_state = "beaker"
	center_of_mass = "x=15;y=8"

/obj/item/reagent_container/food/drinks/jar/Initialize()
	. = ..()
	reagents.add_reagent("slime", 50)

/obj/item/reagent_container/food/drinks/jar/on_reagent_change()
	if(reagents.reagent_list.len > 0)
		switch(reagents.get_master_reagent_id())
			if("slime")
				icon_state = "jar_slime"
				name = "slime jam"
				desc = "A jar of slime jam. Delicious!"
			else
				icon_state ="jar_what"
				name = "jar of something"
				desc = "You can't really tell what this is."
	else
		icon_state = "jar"
		name = "empty jar"
		desc = "A jar. You're not sure what it's supposed to hold."
		return
