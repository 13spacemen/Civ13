/datum/job/japanese/yakuza_underboss
	title = "Yama Wakagashira"
	en_meaning = "Underboss"
	rank_abbreviation = ""
	spawn_location = "JoinLateJPCap"
	whitelisted = TRUE
	is_commander = TRUE
	is_officer = TRUE
	min_positions = 1
	max_positions = 1

/datum/job/japanese/yakuza_underboss/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/peakyblinder(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
//head
	if (prob(35))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
	else
		H.equip_to_slot_or_del(new null(H), slot_l_store)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/japanese(H), slot_r_store)
	if (prob(35))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Underboss of the Yamaguchi-gumi!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the gangmen and their orders. The whole operation relies on you!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/japanese/yakuza_underboss_deputy
	title = "Yama Wakagashira-Hosa"
	en_meaning = "Deputy underboss"
	rank_abbreviation = ""


	spawn_location = "JoinLateJP"
	whitelisted = TRUE

	is_commander = TRUE
	is_officer = TRUE
	is_squad_leader = TRUE

	min_positions = 1
	max_positions = 2

/datum/job/japanese/yakuza_underboss_deputy/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/peakyblinder(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
//head
	if (prob(25))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
	else
		H.equip_to_slot_or_del(new null(H), slot_l_store)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/japanese(H), slot_r_store)
	if (prob(15))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	world << "<b><big>[H.real_name] is the Deputy Underboss of the Yamaguchi-Gumi Gang!!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the gangmen and their orders. Second to underboss. The whole operation relies on you and your orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/japanese/yakuza
	title = "Yamaguchi-Gumi Kaiin"
	en_meaning = "Yamaguchi-Gumi Member"
	rank_abbreviation = ""
	spawn_location = "JoinLateJP"
	min_positions = 6
	max_positions = 24

/datum/job/japanese/yakuza/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new/obj/item/clothing/under/modern2(H), slot_w_uniform)

//head
	if (prob(25))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
	else
		H.equip_to_slot_or_del(new null(H), slot_l_store)
//jacket

	var/randjack = rand(1,3)
	if (randjack == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
	else if (randjack == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/blackvest(H), slot_wear_suit)
	else if (randjack == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/black_suit(H), slot_head)
//back
	if (prob(5))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	H.add_note("Role", "You are a <b>[title]</b>, a gang mebmer employed by Yamaguch-Gumi Clan. Follow your <b>Underboss'</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL) //not used
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_MEDIUM_LOW)
	return TRUE
/////////////////////////////////////////////////////////////////////////ICHI/////////////////////////////////////////////////////
/datum/job/japanese/yakuza_underboss_ichi
	title = "Ichi Wakagashira"
	en_meaning = "Underboss"
	rank_abbreviation = ""
	spawn_location = "JoinLateRNCap"
	whitelisted = TRUE
	is_commander = TRUE
	is_officer = TRUE
	min_positions = 1
	max_positions = 1

/datum/job/japanese/yakuza_underboss_ichi/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/peakyblinder(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
//head
//weapons
	if (prob(35))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
	else
		H.equip_to_slot_or_del(new null(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/japanese_officer(H), slot_r_store)
	if (prob(35))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Underboss of the Ichiwa-Kai!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the gangmen and their orders. The whole operation relies on you!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/japanese/yakuza_underboss_deputy_ichi
	title = "Ichi Wakagashira-Hosa"
	en_meaning = "Deputy underboss"
	rank_abbreviation = ""


	spawn_location = "JoinLateRN"
	whitelisted = TRUE

	is_commander = TRUE
	is_officer = TRUE
	is_squad_leader = TRUE

	min_positions = 1
	max_positions = 2

/datum/job/japanese/yakuza_underboss_deputy_ichi/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/peakyblinder(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
//head
	if (prob(25))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
	else
		H.equip_to_slot_or_del(new null(H), slot_l_store)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/japanese_officer(H), slot_r_store)
	if (prob(15))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	world << "<b><big>[H.real_name] is the Deputy Underboss of the Ichiwa-Kai Gang!!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the gangmen and their orders. Second to underboss. The whole operation relies on you and your orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/japanese/yakuza_ichi
	title = "Ichiwa-Kai Kaiin"
	en_meaning = "Ichiwa-Kai Member"
	rank_abbreviation = ""
	spawn_location = "JoinLateRN"
	min_positions = 6
	max_positions = 24

/datum/job/japanese/yakuza_ichi/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new/obj/item/clothing/under/modern2(H), slot_w_uniform)

//head
//jacket

	var/randjack = rand(1,3)
	if (randjack == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/charcoal_suit(H), slot_wear_suit)
	else if (randjack == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/blackvest(H), slot_wear_suit)
	else if (randjack == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/black_suit(H), slot_head)
//back
	if (prob(5))
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/silencer/pistol(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/m9beretta(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m9beretta(H), slot_l_hand)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	H.add_note("Role", "You are a <b>[title]</b>, a gang mebmer employed by Ichiwa-Kai Clan. Follow your <b>Underboss'</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL) //not used
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_MEDIUM_LOW)
	return TRUE