/datum/admins/proc/topic_debug(var/href)
	switch(href)
		if("bulkfetchdisks")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/disk/objective/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchtechmanuals")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return	
			for(var/obj/item/document_objective/technical_manual/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchprogressreports")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/document_objective/report/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchpaperscraps")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/document_objective/paper/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchfolders")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/document_objective/folder/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchexpdevices")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/device/mass_spectrometer/adv/objective/C in item_list)
				C.forceMove(usr.loc)
			for(var/obj/item/device/reagent_scanner/adv/objective/C in item_list)
				C.forceMove(usr.loc)
			for(var/obj/item/device/healthanalyzer/objective/C in item_list)
				C.forceMove(usr.loc)
			for(var/obj/item/device/autopsy_scanner/objective/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchhumancorpses")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/mob/H in human_mob_list)
				if(H.stat == DEAD)
					H.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchxenocorpses")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/mob/living/carbon/Xenomorph/X in xeno_mob_list)
				if(X.stat == DEAD)
					X.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchvials")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/storage/fancy/vials/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
		if("bulkfetchresearchnotes")
			if(alert(usr, "Are you sure you want to do this?", "Confirmation", "Yes", "No") == "No")
				return
			for(var/obj/item/paper/research_notes/C in item_list)
				C.forceMove(usr.loc)
			message_staff("[key_name_admin(usr)] bulk fetched items [href].", 1)
