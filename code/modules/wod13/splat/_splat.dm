/datum/species
	var/animation_goes_up = FALSE	//PSEUDO_M i have no idea what this does

/datum/splat
	var/power_stat_name = null
	/// Pretty much every splat has a power stat.
	var/power_stat_max = 0
	var/power_stat_current = 0
	/// And they all have special snowflake names.
	var/list/splat_traits = null

/// We'll use this for signals to fuck with supernaturals and whatever else
/datum/splat/supernatural
