
//These are all the different status effects. Use the paths for each effect in the defines.

#define STATUS_EFFECT_MULTIPLE 0 //if it allows multiple instances of the effect

#define STATUS_EFFECT_UNIQUE 1 //if it allows only one, preventing new instances

#define STATUS_EFFECT_REPLACE 2 //if it allows only one, but new instances replace

#define STATUS_EFFECT_REFRESH 3 // if it only allows one, and new instances just instead refresh the timer

///////////
// BUFFS //
///////////

#define STATUS_EFFECT_SHADOW_MEND /datum/status_effect/shadow_mend //Quick, powerful heal that deals damage afterwards. Heals 15 brute/burn every second for 3 seconds.
#define STATUS_EFFECT_VOID_PRICE /datum/status_effect/void_price //The price of healing yourself with void energy. Deals 3 brute damage every 3 seconds for 30 seconds.
#define STATUS_EFFECT_EXERCISED /datum/status_effect/exercised //Prevents heart disease

#define STATUS_EFFECT_HIPPOCRATIC_OATH /datum/status_effect/hippocraticOath //Gives you an aura of healing as well as regrowing the Rod of Asclepius if lost

#define STATUS_EFFECT_REGENERATIVE_CORE /datum/status_effect/regenerative_core

#define STATUS_EFFECT_TERROR_REGEN /datum/status_effect/terror/regeneration   //over time healing, 125 HP within 25~ seconds

#define STATUS_EFFECT_TERROR_FOOD_REGEN /datum/status_effect/terror/food_regen   //over time healing for mobs to gain full HP within 25~ seconds

//#define STATUS_EFFECT_VANGUARD /datum/status_effect/vanguard_shield //Grants temporary stun absorption, but will stun the user based on how many stuns they absorbed.
//#define STATUS_EFFECT_INATHNEQS_ENDOWMENT /datum/status_effect/inathneqs_endowment //A 15-second invulnerability and stun absorption, granted by Inath-neq.
//#define STATUS_EFFECT_WRAITHSPECS /datum/status_effect/wraith_spectacles

//#define STATUS_EFFECT_POWERREGEN /datum/status_effect/cyborg_power_regen //Regenerates power on a given cyborg over time

//#define STATUS_EFFECT_HISGRACE /datum/status_effect/his_grace //His Grace.

//#define STATUS_EFFECT_WISH_GRANTERS_GIFT /datum/status_effect/wish_granters_gift //If you're currently resurrecting with the Wish Granter

#define STATUS_EFFECT_BLOODDRUNK /datum/status_effect/blooddrunk //Stun immunity and greatly reduced damage taken

#define STATUS_EFFECT_BLOOD_SWELL /datum/status_effect/bloodswell //stun resistance and halved damage for gargantua vampires

#define STATUS_EFFECT_BLOOD_RUSH /datum/status_effect/blood_rush // speed boost for gargantua vampires

#define STATUS_EFFECT_HOPE /datum/status_effect/hope // Healing that scales when injured (but not in deep crit), and nice messages to keep the hope

/////////////
// DEBUFFS //
/////////////

//#define STATUS_EFFECT_STUN /datum/status_effect/incapacitating/stun //the affected is stunned

//#define STATUS_EFFECT_KNOCKDOWN /datum/status_effect/incapacitating/knockdown //the affected is knocked down

//#define STATUS_EFFECT_UNCONSCIOUS /datum/status_effect/incapacitating/unconscious //the affected is unconscious

//#define STATUS_EFFECT_SLEEPING /datum/status_effect/incapacitating/sleeping //the affected is asleep

//#define STATUS_EFFECT_BELLIGERENT /datum/status_effect/belligerent //forces the affected to walk, doing damage if they try to run

//#define STATUS_EFFECT_GEISTRACKER /datum/status_effect/geis_tracker //if you're using geis, this tracks that and keeps you from using scripture

//#define STATUS_EFFECT_MANIAMOTOR /datum/status_effect/maniamotor //disrupts, damages, and confuses the affected as long as they're in range of the motor
//#define MAX_MANIA_SEVERITY 100 //how high the mania severity can go
//#define MANIA_DAMAGE_TO_CONVERT 90 //how much damage is required before it'll convert affected targets

//#define STATUS_EFFECT_HISWRATH /datum/status_effect/his_wrath //His Wrath.

#define STATUS_EFFECT_SUMMONEDGHOST /datum/status_effect/cultghost //is a cult ghost: can see dead people, can't manifest more ghosts

#define STATUS_EFFECT_CRUSHERMARK /datum/status_effect/crusher_mark //if struck with a proto-kinetic crusher, takes a ton of damage

#define STATUS_EFFECT_SAWBLEED /datum/status_effect/saw_bleed //if the bleed builds up enough, takes a ton of damage

#define STATUS_EFFECT_STAMINADOT /datum/status_effect/stamina_dot

//#define STATUS_EFFECT_NECROPOLIS_CURSE /datum/status_effect/necropolis_curse
//#define CURSE_BLINDING	1 //makes the edges of the target's screen obscured
//#define CURSE_SPAWNING	2 //spawns creatures that attack the target only
//#define CURSE_WASTING	4 //causes gradual damage
//#define CURSE_GRASPING	8 //hands reach out from the sides of the screen, doing damage and stunning if they hit the target

//#define STATUS_EFFECT_KINDLE /datum/status_effect/kindle //A knockdown reduced by 1 second for every 3 points of damage the target takes.

//#define STATUS_EFFECT_ICHORIAL_STAIN /datum/status_effect/ichorial_stain //Prevents a servant from being revived by vitality matrices for one minute.

/// Whether a moth's wings are burnt
#define STATUS_EFFECT_BURNT_WINGS /datum/status_effect/burnt_wings

/// If a moth is in a cocoon
#define STATUS_EFFECT_COCOONED /datum/status_effect/cocooned

/////////////
// NEUTRAL //
/////////////

#define STATUS_EFFECT_HIGHFIVE /datum/status_effect/high_five

//#define STATUS_EFFECT_SIGILMARK /datum/status_effect/sigil_mark

#define STATUS_EFFECT_CRUSHERDAMAGETRACKING /datum/status_effect/crusher_damage //tracks total kinetic crusher damage on a target

#define STATUS_EFFECT_SYPHONMARK /datum/status_effect/syphon_mark //tracks kills for the KA death syphon module

/// Status effect given when someone uses the Give Item command to offer an item to another player.
#define STATUS_EFFECT_OFFERING_ITEM /datum/status_effect/offering_item
