GLOBAL_LIST_INIT(bitfields, generate_bitfields())

/// Specifies a bitfield for smarter debugging
/datum/bitfield
	/// The variable name that contains the bitfield
	var/variable

	/// An associative list of the readable flag and its true value
	var/list/flags

/// Turns /datum/bitfield subtypes into a list for use in debugging
/proc/generate_bitfields()
	var/list/bitfields = list()
	for (var/_bitfield in subtypesof(/datum/bitfield))
		var/datum/bitfield/bitfield = new _bitfield
		bitfields[bitfield.variable] = bitfield.flags
	return bitfields

DEFINE_BITFIELD(admin_flags, list(
	"ADMIN" = R_ADMIN,
	"AUTOLOGIN" = R_AUTOADMIN,
	"BAN" = R_BAN,
	"BUILDMODE" = R_BUILD,
	"DBRANKS" = R_DBRANKS,
	"DEBUG" = R_DEBUG,
	"FUN" = R_FUN,
	"PERMISSIONS" = R_PERMISSIONS,
	"POLL" = R_POLL,
	"POSSESS" = R_POSSESS,
	"SERVER" = R_SERVER,
	"SOUNDS" = R_SOUND,
	"SPAWN" = R_SPAWN,
	"STEALTH" = R_STEALTH,
	"VAREDIT" = R_VAREDIT,
))

DEFINE_BITFIELD(appearance_flags, list(
	"KEEP_APART" = KEEP_APART,
	"KEEP_TOGETHER" = KEEP_TOGETHER,
	"LONG_GLIDE" = LONG_GLIDE,
	"NO_CLIENT_COLOR" = NO_CLIENT_COLOR,
	"PIXEL_SCALE" = PIXEL_SCALE,
	"PLANE_MASTER" = PLANE_MASTER,
	"RESET_ALPHA" = RESET_ALPHA,
	"RESET_COLOR" = RESET_COLOR,
	"RESET_TRANSFORM" = RESET_TRANSFORM,
	"TILE_BOUND" = TILE_BOUND,
))

DEFINE_BITFIELD(area_flags, list(
	"ABDUCTOR_PROOF" = ABDUCTOR_PROOF,
	"BLOBS_ALLOWED" = BLOBS_ALLOWED,
	"BLOCK_SUICIDE" = BLOCK_SUICIDE,
	"CULT_PERMITTED" = CULT_PERMITTED,
	"FLORA_ALLOWED" = FLORA_ALLOWED,
	"HIDDEN_AREA" = HIDDEN_AREA,
	"MEGAFAUNA_SPAWN_ALLOWED" = MEGAFAUNA_SPAWN_ALLOWED,
	"MOB_SPAWN_ALLOWED" = MOB_SPAWN_ALLOWED,
	"NO_ALERTS" = NO_ALERTS,
	"NOTELEPORT" = NOTELEPORT,
	"CAVES_ALLOWED" = CAVES_ALLOWED,
	"UNIQUE_AREA" = UNIQUE_AREA,
	"VALID_TERRITORY" = VALID_TERRITORY,
	"XENOBIOLOGY_COMPATIBLE" = XENOBIOLOGY_COMPATIBLE,
	"NO_ALERTS" = NO_ALERTS,
))

DEFINE_BITFIELD(turf_flags, list(
	"NO_LAVA_GEN" = NO_LAVA_GEN,
	"NO_RUINS" = NO_RUINS,
	"NOJAUNT" = NOJAUNT,
	"UNUSED_RESERVATION_TURF" = UNUSED_RESERVATION_TURF,
))

DEFINE_BITFIELD(car_traits, list(
	"CAN_KIDNAP" = CAN_KIDNAP,
))

DEFINE_BITFIELD(clothing_flags, list(
	"ANTI_TINFOIL_MANEUVER" = ANTI_TINFOIL_MANEUVER,
	"BLOCKS_SHOVE_KNOCKDOWN" = BLOCKS_SHOVE_KNOCKDOWN,
	"BLOCKS_SPEECH" = BLOCKS_SPEECH,
	"BLOCK_GAS_SMOKE_EFFECT" = BLOCK_GAS_SMOKE_EFFECT,
	"LAVAPROTECT" = LAVAPROTECT,
	"MASKINTERNALS" = MASKINTERNALS,
	"NOSLIP" = NOSLIP,
	"SCAN_REAGENTS" = SCAN_REAGENTS,
	"SNUG_FIT" = SNUG_FIT,
	"STOPSPRESSUREDAMAGE" = STOPSPRESSUREDAMAGE,
	"THICKMATERIAL" = THICKMATERIAL,
	"VOICEBOX_DISABLED" = VOICEBOX_DISABLED,
	"VOICEBOX_TOGGLABLE" = VOICEBOX_TOGGLABLE,
))

DEFINE_BITFIELD(datum_flags, list(
	"DF_ISPROCESSING" = DF_ISPROCESSING,
	"DF_VAR_EDITED" = DF_VAR_EDITED,
	"DF_USE_TAG" = DF_USE_TAG,
))

DEFINE_BITFIELD(disease_flags, list(
	"CAN_CARRY" = CAN_CARRY,
	"CAN_RESIST" = CAN_RESIST,
	"CURABLE" = CURABLE,
))

DEFINE_BITFIELD(flags_1, list(
	"ADMIN_SPAWNED_1" = ADMIN_SPAWNED_1,
	"ATMOS_IS_PROCESSING_1" = ATMOS_IS_PROCESSING_1,
	"CAN_BE_DIRTY_1" = CAN_BE_DIRTY_1,
	"CONDUCT_1" = CONDUCT_1,
	"HOLOGRAM_1" = HOLOGRAM_1,
	"INITIALIZED_1" = INITIALIZED_1,
	"IS_ONTOP_1" = IS_ONTOP_1,
	"IS_SPINNING_1" = IS_SPINNING_1,
	"NO_SCREENTIPS_1" = NO_SCREENTIPS_1,
	"NODECONSTRUCT_1" = NODECONSTRUCT_1,
	"ON_BORDER_1" = ON_BORDER_1,
	"OVERLAY_QUEUED_1" = OVERLAY_QUEUED_1,
	"PREVENT_CLICK_UNDER_1" = PREVENT_CLICK_UNDER_1,
	"PREVENT_CONTENTS_EXPLOSION_1" = PREVENT_CONTENTS_EXPLOSION_1,
	"RAD_NO_CONTAMINATE_1" = RAD_NO_CONTAMINATE_1,
	"RAD_PROTECT_CONTENTS_1" = RAD_PROTECT_CONTENTS_1,
	"SHOCKED_1" = SHOCKED_1,
	"SUPERMATTER_IGNORES_1" = SUPERMATTER_IGNORES_1,
	"UNPAINTABLE_1" = UNPAINTABLE_1,
	"IS_PLAYER_COLORABLE_1" = IS_PLAYER_COLORABLE_1,
))

DEFINE_BITFIELD(flags_ricochet, list(
	"RICOCHET_HARD" = RICOCHET_HARD,
	"RICOCHET_SHINY" = RICOCHET_SHINY,
))

DEFINE_BITFIELD(interaction_flags_atom, list(
	"INTERACT_ATOM_ATTACK_HAND" = INTERACT_ATOM_ATTACK_HAND,
	"INTERACT_ATOM_CHECK_GRAB" = INTERACT_ATOM_CHECK_GRAB,
	"INTERACT_ATOM_IGNORE_INCAPACITATED" = INTERACT_ATOM_IGNORE_INCAPACITATED,
	"INTERACT_ATOM_IGNORE_RESTRAINED" = INTERACT_ATOM_IGNORE_RESTRAINED,
	"INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND" = INTERACT_ATOM_NO_FINGERPRINT_ATTACK_HAND,
	"INTERACT_ATOM_NO_FINGERPRINT_INTERACT" = INTERACT_ATOM_NO_FINGERPRINT_INTERACT,
	"INTERACT_ATOM_REQUIRES_ANCHORED" = INTERACT_ATOM_REQUIRES_ANCHORED,
	"INTERACT_ATOM_REQUIRES_DEXTERITY" = INTERACT_ATOM_REQUIRES_DEXTERITY,
	"INTERACT_ATOM_UI_INTERACT" = INTERACT_ATOM_UI_INTERACT,
))

DEFINE_BITFIELD(interaction_flags_machine, list(
	"INTERACT_MACHINE_ALLOW_SILICON" = INTERACT_MACHINE_ALLOW_SILICON,
	"INTERACT_MACHINE_OFFLINE" = INTERACT_MACHINE_OFFLINE,
	"INTERACT_MACHINE_OPEN" = INTERACT_MACHINE_OPEN,
	"INTERACT_MACHINE_OPEN_SILICON" = INTERACT_MACHINE_OPEN_SILICON,
	"INTERACT_MACHINE_REQUIRES_SIGHT" = INTERACT_MACHINE_REQUIRES_SIGHT,
	"INTERACT_MACHINE_REQUIRES_SILICON" = INTERACT_MACHINE_REQUIRES_SILICON,
	"INTERACT_MACHINE_SET_MACHINE" = INTERACT_MACHINE_SET_MACHINE,
	"INTERACT_MACHINE_WIRES_IF_OPEN" = INTERACT_MACHINE_WIRES_IF_OPEN,
))

DEFINE_BITFIELD(interaction_flags_item, list(
	"INTERACT_ITEM_ATTACK_HAND_PICKUP" = INTERACT_ITEM_ATTACK_HAND_PICKUP,
))

DEFINE_BITFIELD(item_flags, list(
	"ABSTRACT" = ABSTRACT,
	"BEING_REMOVED" = BEING_REMOVED,
	"DROPDEL" = DROPDEL,
	"EXAMINE_SKIP" = EXAMINE_SKIP,
	"FORCE_STRING_OVERRIDE" = FORCE_STRING_OVERRIDE,
	"HAND_ITEM" = HAND_ITEM,
	"IN_INVENTORY" = IN_INVENTORY,
	"IN_STORAGE" = IN_STORAGE,
	"IMMUTABLE_SLOW" = IMMUTABLE_SLOW,
	"NEEDS_PERMIT" = NEEDS_PERMIT,
	"NOBLUDGEON" = NOBLUDGEON,
	"NO_MAT_REDEMPTION" = NO_MAT_REDEMPTION,
	"SLOWS_WHILE_IN_HAND" = SLOWS_WHILE_IN_HAND,
	"SURGICAL_TOOL" = SURGICAL_TOOL,
	"XENOMORPH_HOLDABLE" = XENOMORPH_HOLDABLE,
	"NO_PIXEL_RANDOM_DROP" = NO_PIXEL_RANDOM_DROP,
))

DEFINE_BITFIELD(machine_stat, list(
	"BROKEN" = BROKEN,
	"EMPED" = EMPED,
	"MAINT" = MAINT,
	"NOPOWER" = NOPOWER,
))

DEFINE_BITFIELD(mat_container_flags, list(
	"MATCONTAINER_EXAMINE" = MATCONTAINER_EXAMINE,
	"MATCONTAINER_NO_INSERT" = MATCONTAINER_NO_INSERT,
	"MATCONTAINER_ANY_INTENT" = MATCONTAINER_ANY_INTENT,
	"MATCONTAINER_SILENT" = MATCONTAINER_SILENT,
	"BREAKDOWN_ALLOYS" = BREAKDOWN_ALLOYS,
))

DEFINE_BITFIELD(internal_damage, list(
	"MECHA_INT_FIRE" = MECHA_INT_FIRE,
	"MECHA_INT_TEMP_CONTROL" = MECHA_INT_TEMP_CONTROL,
	"MECHA_INT_TANK_BREACH" = MECHA_INT_TANK_BREACH,
	"MECHA_INT_CONTROL_LOST" = MECHA_INT_CONTROL_LOST,
))

DEFINE_BITFIELD(mecha_flags, list(
	"ADDING_ACCESS_POSSIBLE" = ADDING_ACCESS_POSSIBLE,
	"ADDING_MAINT_ACCESS_POSSIBLE" = ADDING_MAINT_ACCESS_POSSIBLE,
	"CANSTRAFE" = CANSTRAFE,
	"LIGHTS_ON" = LIGHTS_ON,
	"SILICON_PILOT" = SILICON_PILOT,
	"IS_ENCLOSED" = IS_ENCLOSED,
	"HAS_LIGHTS" = HAS_LIGHTS,
))

DEFINE_BITFIELD(mob_biotypes, list(
	"MOB_BEAST" = MOB_BEAST,
	"MOB_BUG" = MOB_BUG,
	"MOB_EPIC" = MOB_EPIC,
	"MOB_HUMANOID" = MOB_HUMANOID,
	"MOB_MINERAL" = MOB_MINERAL,
	"MOB_ORGANIC" = MOB_ORGANIC,
	"MOB_REPTILE" = MOB_REPTILE,
	"MOB_ROBOTIC" = MOB_ROBOTIC,
	"MOB_SPIRIT" = MOB_SPIRIT,
	"MOB_UNDEAD" = MOB_UNDEAD,
	"MOB_PLANT" = MOB_PLANT
))

DEFINE_BITFIELD(mobility_flags, list(
	"MOVE" = MOBILITY_MOVE,
	"PICKUP" = MOBILITY_PICKUP,
	"PULL" = MOBILITY_PULL,
	"STAND" = MOBILITY_STAND,
	"STORAGE" = MOBILITY_STORAGE,
	"UI" = MOBILITY_UI,
	"USE" = MOBILITY_USE,
))

DEFINE_BITFIELD(movement_type, list(
	"FLOATING" = FLOATING,
	"FLYING" = FLYING,
	"GROUND" = GROUND,
	"PHASING" = PHASING,
	"VENTCRAWLING" = VENTCRAWLING,
))

DEFINE_BITFIELD(obj_flags, list(
	"BEING_SHOCKED" = BEING_SHOCKED,
	"CAN_BE_HIT" = CAN_BE_HIT,
	"DANGEROUS_POSSESSION" = DANGEROUS_POSSESSION,
	"EMAGGED" = EMAGGED,
	"FROZEN" = FROZEN,
	"IN_USE" = IN_USE,
	"ON_BLUEPRINTS" = ON_BLUEPRINTS,
	"UNIQUE_RENAME" = UNIQUE_RENAME,
	"USES_TGUI" = USES_TGUI,
))

DEFINE_BITFIELD(pass_flags, list(
	"LETPASSTHROW" = LETPASSTHROW,
	"PASSBLOB" = PASSBLOB,
	"PASSCLOSEDTURF" = PASSCLOSEDTURF,
	"PASSGLASS" = PASSGLASS,
	"PASSGRILLE" = PASSGRILLE,
	"PASSMOB" = PASSMOB,
	"PASSTABLE" = PASSTABLE,
))

DEFINE_BITFIELD(resistance_flags, list(
	"LAVA_PROOF" = LAVA_PROOF,
	"FIRE_PROOF" = FIRE_PROOF,
	"FLAMMABLE" = FLAMMABLE,
	"ON_FIRE" = ON_FIRE,
	"UNACIDABLE" = UNACIDABLE,
	"ACID_PROOF" = ACID_PROOF,
	"INDESTRUCTIBLE" = INDESTRUCTIBLE,
	"FREEZE_PROOF" = FREEZE_PROOF
))

DEFINE_BITFIELD(sight, list(
	"BLIND" = BLIND,
	"SEE_BLACKNESS" = SEE_BLACKNESS,
	"SEE_INFRA" = SEE_INFRA,
	"SEE_MOBS" = SEE_MOBS,
	"SEE_OBJS" = SEE_OBJS,
	"SEE_PIXELS" = SEE_PIXELS,
	"SEE_SELF" = SEE_SELF,
	"SEE_THRU" = SEE_THRU,
	"SEE_TURFS" = SEE_TURFS,
))

DEFINE_BITFIELD(vis_flags, list(
	"VIS_HIDE" = VIS_HIDE,
	"VIS_INHERIT_DIR" = VIS_INHERIT_DIR,
	"VIS_INHERIT_ICON" = VIS_INHERIT_ICON,
	"VIS_INHERIT_ICON_STATE" = VIS_INHERIT_ICON_STATE,
	"VIS_INHERIT_ID" = VIS_INHERIT_ID,
	"VIS_INHERIT_LAYER" = VIS_INHERIT_LAYER,
	"VIS_INHERIT_PLANE" = VIS_INHERIT_PLANE,
	"VIS_UNDERLAY" = VIS_UNDERLAY,
))

DEFINE_BITFIELD(zap_flags, list(
	"ZAP_ALLOW_DUPLICATES" = ZAP_ALLOW_DUPLICATES,
	"ZAP_MACHINE_EXPLOSIVE" = ZAP_MACHINE_EXPLOSIVE,
	"ZAP_MOB_DAMAGE" = ZAP_MOB_DAMAGE,
	"ZAP_MOB_STUN" = ZAP_MOB_STUN,
	"ZAP_OBJ_DAMAGE" = ZAP_OBJ_DAMAGE,
	"ZAP_GENERATES_POWER" = ZAP_GENERATES_POWER,
))

DEFINE_BITFIELD(chemical_flags, list(
	"REAGENT_DEAD_PROCESS" = REAGENT_DEAD_PROCESS,
	"REAGENT_DONOTSPLIT" = REAGENT_DONOTSPLIT,
	"REAGENT_INVISIBLE" = REAGENT_INVISIBLE,
	"REAGENT_SNEAKYNAME" = REAGENT_SNEAKYNAME,
	"REAGENT_SPLITRETAINVOL" = REAGENT_SPLITRETAINVOL,
	"REAGENT_CAN_BE_SYNTHESIZED" = REAGENT_CAN_BE_SYNTHESIZED,
))

DEFINE_BITFIELD(reaction_flags, list(
	"REACTION_CLEAR_IMPURE"  = REACTION_CLEAR_IMPURE,
	"REACTION_CLEAR_INVERSE" = REACTION_CLEAR_INVERSE,
	"REACTION_CLEAR_RETAIN" = REACTION_CLEAR_RETAIN,
	"REACTION_INSTANT" = REACTION_INSTANT,
	"REACTION_HEAT_ARBITARY" = REACTION_HEAT_ARBITARY,
	"REACTION_COMPETITIVE" = REACTION_COMPETITIVE,
	"REACTION_PH_VOL_CONSTANT" = REACTION_PH_VOL_CONSTANT,
	"REACTION_REAL_TIME_SPLIT" = REACTION_REAL_TIME_SPLIT,
))
