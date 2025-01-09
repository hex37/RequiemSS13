#define PURE_HUMAN_SPLAT 0 // for things that will only apply to humans, they'll need to have no other pslats
#define KINDRED_SPLAT (1<<0)
#define GHOUL_SPLAT (1<<1)
#define GAROU_SPLAT (1<<2)

//PSEUDO_M rework this to work off of processing a signal bitfield instead to save on list assignments?
//or maybe just to make people learn signals because they're very performant and we want to account for CAN_DO stuff

// what splat are you?
#define splatted_kindred(A) (LAZYFIND(A.splats, /datum/splat/supernatural/kindred))
#define splatted_ghoul(A) (LAZYFIND(A.splats, /datum/splat/supernatural/ghoul))
#define splatted_garou(A) (LAZYFIND(A.splats, /datum/splat/supernatural/garou))
// we wanna account for stuff only humans can do, and also account for things like ghouled pets
#define splatted_pure_human(A) \
	if(!ishuman(A)) { return FALSE; } \
	var/list/splats = A.splats; \
	if(!length(splats)) { return TRUE; } \
	for(var/datum/splat/splat in splats) { \
		if(istype(splat, /datum/splat/supernatural)) { return FALSE; } \
	} \
	return TRUE;

#define iswerewolf(A) (istype(A, /mob/living/carbon/werewolf))

#define iscrinos(A) (istype(A, /mob/living/carbon/werewolf/crinos))

#define islupus(A) (istype(A, /mob/living/carbon/werewolf/lupus))
