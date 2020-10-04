/obj/item/clothing/shoes/black
	name = "black shoes"
	icon_state = "black"
	desc = "A pair of black shoes."

	flags_cold_protection = BODY_FLAG_FEET
	min_cold_protection_temperature = SHOE_min_cold_protection_temperature
	flags_heat_protection = BODY_FLAG_FEET
	max_heat_protection_temperature = SHOE_max_heat_protection_temperature

/obj/item/clothing/shoes/brown
	name = "brown shoes"
	desc = "A pair of brown shoes."
	icon_state = "brown"

/obj/item/clothing/shoes/blue
	name = "blue shoes"
	icon_state = "blue"

/obj/item/clothing/shoes/green
	name = "green shoes"
	icon_state = "green"

/obj/item/clothing/shoes/yellow
	name = "yellow shoes"
	icon_state = "yellow"

/obj/item/clothing/shoes/purple
	name = "purple shoes"
	icon_state = "purple"

/obj/item/clothing/shoes/brown
	name = "brown shoes"
	icon_state = "brown"

/obj/item/clothing/shoes/red
	name = "red shoes"
	desc = "Stylish red shoes."
	icon_state = "red"

/obj/item/clothing/shoes/white
	name = "white shoes"
	icon_state = "white"
	permeability_coefficient = 0.01

/obj/item/clothing/shoes/leather
	name = "leather shoes"
	desc = "A sturdy pair of leather shoes."
	icon_state = "leather"

/obj/item/clothing/shoes/rainbow
	name = "rainbow shoes"
	desc = "Very gay shoes."
	icon_state = "rain_bow"

/obj/item/clothing/shoes/orange
	name = "orange shoes"
	icon_state = "orange"
	var/obj/item/handcuffs/chained = null

/obj/item/clothing/shoes/orange/proc/attach_cuffs(var/obj/item/handcuffs/cuffs, mob/user as mob)
	if (src.chained) return

	user.drop_held_item()
	cuffs.loc = src
	src.chained = cuffs
	src.slowdown = 15
	src.icon_state = "orange1"

/obj/item/clothing/shoes/orange/proc/remove_cuffs(mob/user as mob)
	if (!src.chained) return

	user.put_in_hands(src.chained)
	src.chained.add_fingerprint(user)

	src.slowdown = initial(slowdown)
	src.icon_state = "orange"
	src.chained = null

/obj/item/clothing/shoes/orange/attack_self(mob/user as mob)
	..()
	remove_cuffs(user)

/obj/item/clothing/shoes/orange/attackby(H as obj, mob/user as mob)
	..()
	if (istype(H, /obj/item/handcuffs))
		attach_cuffs(H, user)


