/datum/species
	var/animation_goes_up = FALSE	//PSEUDO_M i have no idea what this does

/datum/splat
	var/power_stat_name = null
	/// Pretty much every splat has a power stat.
	var/power_stat_max = 0
	var/power_stat_current = 0
	/// And they all have special snowflake names.
	var/list/splat_traits = null
	var/morality_name = 
	var/morality_level = 7


/datum/splat/Initialize()
	. = ..()

/datum/splat/proc/Apply()
	SHOULD_CALL_PARENT(TRUE)

/datum/splat/proc/Remove()
	SHOULD_CALL_PARENT(TRUE)

/// We'll use this for signals to fuck with supernaturals and whatever else
/datum/splat/supernatural
