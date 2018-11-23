DROP TABLE IF EXISTS "spell";
CREATE TABLE "spell" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE , "list" TEXT NOT NULL , "level" INTEGER, "name" TEXT, "type" TEXT, "desc" TEXT, "cast" TEXT, "update" BOOL);
INSERT INTO "spell" VALUES(1,'stdinc,linc,darkinc',1,'Befriend','rng,mnd,cmd,10s','The target believes that the caster is an ally that must be defended for 10 seconds. The target may, if they feel they have significant reasons, struggle against the control. In this case, they cannot perform any other action (including defending themselves) for 10 seconds instead. If the caster attacks the target in any way then this effect immediately ends. This effect is a Charm.','By the power of the Ancestors/the Dark Ancestors ''I befriend you!''',NULL);
INSERT INTO "spell" VALUES(2,'stdinc,darkinc',1,'Confusion','rng,mnd,cmd,10s','For 10 seconds, or until they are struck, the target will be dazed. They can do nothing apart from
stand still and look around. The target can parry or block with their weapon or shield, but cannot
attack or cast spells until the effect expires or they have been struck (whichever is sooner). This
effect breaks Concentration.','By the power of the Ancestors / the Dark Ancestors I confuse you',NULL);
INSERT INTO "spell" VALUES(3,'stdinc,linc,darkinc,spcast,ench,shmag',1,'Countermagic','rng,mag,ctr,ins','This stops a single level 1 or 2 ranged effect occurring, except for Dismiss or Control. Countermagic
must be started within 3 seconds of the completion of the casting of the effect to be countered, and cannot
counter Mass effects. You can still cast this spell even if the effect that you are countering would prevent you
from doing so.','By the power of the Ancestors / the Dark ancestors/ Magic I counter that spell',NULL);
INSERT INTO "spell" VALUES(4,'stdinc,linc',1,'Cure Wound','tch,phy,cur,ins','Restores 1 body hit to the target location. This will only be effective on a being with a Living Pattern and
will not be effective on a character under on a location suffering from a Fatal Wound, the effects Disease or
Decay.','By the power of the Ancestors I Cure this Wound',NULL);
INSERT INTO "spell" VALUES(5,'stdinc,linc,darkinc,shmag,cor',1,'Detect Unliving','mss,pat,det,ins','Detects any unliving within 10ft (~3m) of the caster. Any character within range of the caster that is
Unliving or Detects as Unliving, must say "Ping" in a loud clear voice. In character, this effect causes this
noise, so everyone around the Detected character is aware of the effect. If you are unsure check with a
Referee, Marshal or Game Control.','By the power of the Ancestors / the Dark Ancestors / Magic / Corruption I Detect Unliving',NULL);
INSERT INTO "spell" VALUES(6,'stdinc,linc',1,'Dismiss','rng,mag,spc,ins','This spell may be part of a Wedge. (X) is equal to the total number of spell cards used in casting.
The caster may use up to 2 Spell cards when casting this effect. If the target has a Dismiss rank
equal to or lower than the level of Dismiss cast, then they are dismissed, with any repercussions that
this may entail. A Countermagic, High Countermagic, Iron Will or Aura of Immunity cannot stop a Dismiss.
No Immunity will stop a Dismiss unless it says so explicitly.','By the power of the Ancestors I Dismiss you level (X)',NULL);
INSERT INTO "spell" VALUES(7,'stdinc,darkinc,cor',1,'Fear','rng,mnd,cmd,10s','For 10 seconds, the target Fears the caster. For 10 seconds, the target will attempt to remain at least
10ft (~3m) away from the caster. If closer than this when the effect takes place then they must move
away as quickly as it is OOC safe to do so. The target must do everything within their power to flee the
caster including using weapons, abilities and/or casting magic. However, they will not attack the caster by
any means for the duration of the effect. Fear breaks Concentration. Neither holding on to an object or
person nor being held onto will protect you from this effect.','By the power of the Ancestors / the Dark Ancestors / Corruption I command you Fear me',NULL);
INSERT INTO "spell" VALUES(8,'stdinc,linc,darkinc',1,'Retribution','slf,mag,enc,cht','For as long as the caster Chants, any character that strikes the caster takes a point of Artefact
Through damage directly to the same body location as the body location they struck on the caster.
The caster must take a wound, not armour damage, to trigger this effect. This call only has an effect
if the target has struck the caster with a melee weapon. The caster indicates this by saying
"Retribution <Location>". Total Body hit monsters cannot have Retribution cast on them.','By the power of the Ancestors / the Dark Ancestors I claim Retribution',NULL);
INSERT INTO "spell" VALUES(9,'stdinc,darkinc',2,'Ancestral Strike','slf,mag,enc,1m','For 1 minute the caster gains the ability to strike for Enchanted with any melee weapon in their primary hand or a large melee weapon held in both hands, unless the weapon is Silver or already does a damage type other than normal. The weapon does not count as enchanted in any way other than
to strike for enchanted damage and you may swap weapons during the spell effect.','By the power of the Ancestors / the Dark Ancestors I Enchant my weapon',NULL);
INSERT INTO "spell" VALUES(10,'stdinc,linc,darkinc,heal',2,'Aura of Defence','slf,mag,enc,10s','For 10 seconds, the caster and all equipment carried by the caster gain Immunity to all level 1 & 2
ranged effects and Immunity to Normal damage. This effect may only be used for defence, if the caster
casts any offensive effect or strikes anyone, the effect will cease immediately.','By the power of the Ancestors / Life I claim an Aura of Defence',NULL);
INSERT INTO "spell" VALUES(11,'stdinc,linc,darkinc',2,'Chant of Protection','tch,phy,enc,cht','The caster must place both their hands on the target''s shoulders (with their permission) and
continue to chant the vocals. Whilst the caster maintains concentration and contact with the target,
the target can ignore the first blow to strike each of their locations as if it were parried. This includes
ignoring all of its effects. You may target yourself by touching your chest with your primary hand during the
initial casting. After the initial cast, you may take any action, including fighting, that does not require
concentration.','By the power of the Ancestors / the Dark Ancestors I grant you Protection',NULL);
INSERT INTO "spell" VALUES(12,'stdinc,linc',2,'Chant of Sanctuary','tch,pat,enc,cht','By touching a target with a Living Pattern, the caster may prevent the target from dying, so long as
the caster continues to chant and maintain contact with the target with at least one hand. This effect
does not interfere with the passing of the target''s Grace Period, which will continue as normal. You may not
take any other action whilst maintaining this chant, but others may still perform actions towards you or the
target. Several sanctuaries may be maintained on a single target simultaneously. While active, Chant of
Sanctuary may prevent a character from dying, even if all their locations have been reduced to 1 LHV, their
grace period ends or they are affected by a Lethal poison. Should a person under a Sanctuary be suffering
from any unresolved effect that would kill them immediately, then they will die as soon as the Sanctuary is
broken. Sanctuary has no effect on Petrify.','By the power of the Ancestors I grant you Sanctuary',NULL);
INSERT INTO "spell" VALUES(13,'stdinc,darkinc',2,'Halt','rng,phy,imb,10s','For 10 seconds the target is Immobilised.','By the power of the Ancestors / the Dark Ancestors I Halt you',NULL);
INSERT INTO "spell" VALUES(14,'stdinc,linc,darkinc,spcast,ench,shmag',2,'Iron Will','tch,mag,enc,dwn','The caster hands the target a one of the two cards used to cast the spell, with the targets name, the
time of casting and the effect noted on it. The target may use this spell card as a Countermagic spell
with the vocals By my Iron Will, I Counter that spell. A character may have multiple Iron Wills. This
acts in precisely the same manner as a Countermagic effect, except that the target may utilise this power
even if they are wearing armour (of any description) and/or their casting hand is not available. Any Iron Wills
not used by Dawn will be lost.','By the power of the Ancestors / the Dark Ancestors / Magic I grant you Iron Will',NULL);
INSERT INTO "spell" VALUES(15,'stdinc,linc',2,'Lay To Rest','rit,mag,spc,1m','If cast on a recently deceased body (before Dawn of the day following their death) this effect
immediately sends the pattern to the Plane of their Ancestor. Such a pattern cannot then be contacted using
a Speak with dead effect, or be raised as Unliving. If begun within 1 minute of an unliving being Dismissed or
Destroyed, the corrupted pattern is restored and goes to Plane of their Ancestor instead of returning to the
Plane of Unlife. This is a second tier corpse effect, and will not work on a body that has a second tier corpse
effect already applied to it.','Role-play at least a 1-minute ceremony for the deceased and tear 2 Spell cards.',NULL);
INSERT INTO "spell" VALUES(16,'stdinc,linc,darkinc',2,'Speak With Dead','tch,pat,cmd,1m','For 1 minute, the caster may ask the target deceased character questions and they will respond with
truthful one-word answers to the best of their IC knowledge. Answers are restricted to Yes, no,
Unknown or Maybe. This effect only works until the Dawn after the character''s death and requires the
dead character''s body, but may be cast multiple times within those parameters. This effect will not work if the
body has been raised as Unliving, or already been subject to a first or second tier effect (most Rites that
affect corpses).','By the power of the Ancestors / the Dark Ancestors I Speak with the Dead',NULL);
INSERT INTO "spell" VALUES(17,'stdinc',3,'Ancestral Weapon','slf,mag,enc,10m','For 10 minutes the caster gains the ability to strike for Affect (X) with any melee weapon in their
primary hand or a large melee weapon held in both hands, unless the weapon already generates a
damage effect. (X) must be chosen at the time of casting to Affect Daemon, Elemental, Unliving or
Ancestral and then cannot be changed for the duration of this effect. The weapon does not count as
enchanted in any way other than to strike for enchanted damage, and you may swap weapons during the
spell effect.','By the High power of the Ancestors allow me to Affect (X)',NULL);
INSERT INTO "spell" VALUES(18,'stdinc,linc,darkinc,spcast,ench,shmag',3,'High Countermagic','rng,mag,ctr,ins','This stops a single level 1, 2 or 3 ranged effect occurring, except for Dismiss or Control. High
Countermagic must be started within 3 seconds of the completion of the casting of the effect to be
countered, and cannot counter Mass effects. You can still cast this spell even if the effect that you are
countering would prevent you from doing so.','By the High power of the Ancestors / the Dark Ancestors / Magic I Counter that spell',NULL);
INSERT INTO "spell" VALUES(19,'stdinc,linc',3,'High Dismiss','rng,mag,spc,ins','This spell may be part of a Wedge. (X) is equal to the total number of spell cards used in casting.
The caster may add up to 4 Spell cards to the level of the Dismiss. If the target has a Dismiss rank
equal to or lower than the rank of Dismiss cast, then they are Dismissed. A Countermagic, High
Countermagic, Iron Will or Aura of Immunity cannot stop a Dismiss. No Immunity will stop a Dismiss unless it
says so explicitly.','By the High power of the Ancestors I Dismiss you rank (X)',NULL);
INSERT INTO "spell" VALUES(20,'stdinc,darkinc,shmag,cor',3,'Mass Fear','mss,mnd,cmd,10s','Generates a Mass Fear effect within 10ft (~9m) of the caster, or for 10ft (~9m) directly in front of the
caster in an arc indicated by the casters arms at the time of casting. For 10 seconds, the target will
attempt to remain at least 10ft (~3m) away from the caster. If closer than this when the effect takes
place then they must move away as quickly as it is OOC safe to do so. Mass Fear may not be used on
large groups or in mass combat without consulting a Referee or Marshal for safety reasons. The
target must do everything within their power to flee the caster including using weapons, abilities and/or
casting magic. Neither holding on to an object or person nor being held onto will protect you from this effect.','By the High power of the Ancestors / the Dark Ancestors / Magic / Corruption I cause Mass Fear',NULL);
INSERT INTO "spell" VALUES(21,'stdinc,linc,darkinc',3,'Paladin''s Armour','tch,mag,enc,dwn','Until Dawn, if the target is an Incantor, they gain magical armour with an AV of 2 on all locations. A
Fatal effect will destroy the armour completely, ending the Paladins Armour effect, but will not affect
the target. If all locations reach 0 AV then this effect ends. The caster must give the target an
appropriate High Magic Sigil with the targets name, the time of casting and the effect noted on it. The target
must retain this Sigil for the effect to work. If this armour becomes damaged then any character with
Incantation can repair it using a single Spell Card to restore fully the protection value of the armour on a
single location, by touching it and using the vocals "by the power of the ancestors I replenish this armour".
The Paladin''s Armour effect may be recast, but the new instance will replace the previous one. The Paladins
Armour does not interfere with spell casting but will not prevent any effect that would normally go through
armour. Except for Fatal, this has the above affect.','By the High power of the Ancestors / the Dark Ancestors I grant you Paladins Armour',NULL);
INSERT INTO "spell" VALUES(22,'stdinc,linc,darkinc',3,'Protection from Paralysis','tch,mag,enc,dwn','Until Dawn, the target is Immune to the Paralysis effect. The caster must give the target an appropriate
High Magic Sigil with the targets name, the time of casting and the effect noted on it. The target must retain
this Sigil for the effect to work.','By the High power of the Ancestors / the Dark Ancestors I grant you Protection from Paralysis',NULL);
INSERT INTO "spell" VALUES(23,'stdinc,linc,darkinc,heal',3,'Shield from Corruption','tch,pat,enc,10m','For 10 minutes, the target is Immune to the effects Fatal, Decay and Disease.','By the High power of the Ancestors / the Dark Ancestors / Life I Shield you from Corruption',NULL);
INSERT INTO "spell" VALUES(24,'stdinc,linc,darkinc',3,'Speak with Ancestor','rit,mag,spc,10m','This allows you to ask a detailed question of the specified Ancestor. A Referee must be present to
observe the Rite. The question may be anything, but the Ancestor will reply to it only if it sees fit, and from its
point of view. The Ancestors responses will not occur immediately and often will occur overnight. A Speak
with Ancestor form may be collected from Game Control and filled out with details as required and
countersigned by the Referee.','Role-play at least a 10-minute ceremony to a specific, named Ancestor and tear 4 Spell cards.',NULL);
INSERT INTO "spell" VALUES(25,'linc,heal',1,'Remove Disease','tch,pat,cur,ins','Removes any Disease effect from which the target may be suffering. This effect will not heal any
damage, but will allow the target to now be healed in the normal way.','By the power of the Ancestors / Life I Remove Disease from this body',NULL);
INSERT INTO "spell" VALUES(26,'linc,heal',1,'Remove Fear','tch,mnd,enc,10s','For 10 seconds, the target is Immune to all Fear effects.','By the power of the Ancestors / Life I Remove Fear from your mind',NULL);
INSERT INTO "spell" VALUES(27,'linc,heal',2,'Remove Decay','tch,pat,cur,ins','Removes any Decay effect from which the target may be suffering. This effect will not heal any
damage, but will allow the target to now be healed in the normal way.','By the power of the Ancestors / Life I Remove Decay from this body',NULL);
INSERT INTO "spell" VALUES(28,'linc',2,'Full Cure','tch,phy,cur,ins','Restores all body hits to the target location. This will only be effective on a being with a Living Pattern,
and will not be effective on a location suffering from a Fatal Wound, or on a character under the effects
Disease or Decay.','By the power of the Ancestors I Fully Cure your (location)',NULL);
INSERT INTO "spell" VALUES(29,'linc',3,'Courage','tch,mnd,enc,dwn','Until Dawn, the target is Immune to all Fear effects. The caster must give the target an appropriate High
Magic Sigil with the targets name, the time of casting and the effect noted on it. The target must retain this
Sigil for the effect to work.','By the High power of the Ancestors I grant you Courage',NULL);
INSERT INTO "spell" VALUES(30,'linc,ench',3,'Fortify Body','tch,phy,enc,10m','For 10 minutes the target and their armour become Immune to the Through and Crush effects.','By the High power of the Ancestors / Magic I Fortify your Body',NULL);
INSERT INTO "spell" VALUES(31,'darkinc,cor,shmag',1,'Control Unliving','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 2 Spell cards when casting this effect. If the target is Unliving and has a
Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by the
caster. If Controlled, the target who is a member of the Unliving will do anything commanded of them
by the Controller, but this will not affect memories. No counter or Immunity can stop a Control unless it says
so explicitly. The duration of the effect will vary depending on the Dismiss rank of the creature Controlled.','By the power of the Ancestors I Control Unliving rank (X)',NULL);
INSERT INTO "spell" VALUES(32,'darkinc,cor',1,'Repair Unliving','tch,pat,cur,cht','This effect restores 1 point of damage to the indicated location on the target Unliving, for every full
10 seconds of contact during which the caster chants the vocals. Repair Unliving does not stop any
special effects, such as poisons, from continuing to act on the target, but will restore any damage already
caused by such an effect. There is no limit to the number of hits that can be restored to a location, but you
cannot restore a location to more than its maximum value. If the chant is interrupted then this will stop the
effect, but any repair already done will remain.','By the power of the Dark Ancestors / Corruption I Repair this Unliving',NULL);
INSERT INTO "spell" VALUES(33,'darkinc,cor,shmag',2,'Chant of Wasting','tch,pat,enc,cht','For each full minute that the caster touches the target (target must have a Living pattern and be in
their Grace Period), and chants the vocal of this effect, the maximum duration of the target''s current
Grace Period is reduced by 1 minute. For example, after the first minute of combined Grace Period and
Wasting, the remainder of the target''s Grace Period is brought forward to 8 minutes. Termination of the
Chant of Wasting does not cause the lost time to be regained. Multiple Wasting effects have no additional
affect. If the target dies while under a Chant of Wasting effect, then their pattern is sent to the Plane of
Unlife. This is a first tier corpse effect.','By the power of the Dark Ancestors / Magic / Corruption I Waste this Pattern',NULL);
INSERT INTO "spell" VALUES(34,'darkinc',2,'Rite of Dedication','rit,mag,spc,ins','This effect claims the pattern of a recently deceased living or unliving being. The Rite must begin
before Dawn of the day after the death/destruction of the target. Once the Rite is complete, the named
Ancestor claims the pattern of the deceased. The pattern travels to the named Ancestors Plane rather than
that of its own Ancestor. A pattern that has been dedicated in this way may not be summoned in any way
unless the Ancestor who has the pattern permits it, and may well be hostile to the Ancestor that has claimed
it. This is a first tier corpse effect, and will not work on a body that has a first or second tier corpse effect
already applied to it.','Role-play at least a 1-minute ceremony for the deceased and tear 2 Spell cards.',NULL);
INSERT INTO "spell" VALUES(35,'darkinc',3,'Harm','slf,mag,enc,10s','The casters next successful blow with the melee weapon held in their primary hand or a large melee
weapon held in both hands will strike for the Harm damage effect, unless the weapon already
generates another damage effect. If you do not strike someone within 1 min the effect will be lost, but
you may swap weapon within this period without losing the effect.','By the High power of the Dark Ancestors I imbue my weapon to do great Harm',NULL);
INSERT INTO "spell" VALUES(36,'darkinc,cor,shmag',3,'High Control Unliving','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 4 Spell cards when casting this effect. If the target is of the target group and
has a Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by
the caster. When Controlled, the target creature will do anything commanded of them by the Controller, but
this will not affect memories. No counter or Immunity can stop a Control unless it says so explicitly. The
duration of the effect will vary depending on the control rank of the target character.','By the High power of the Dark Ancestors / Magic / Daemonology / the Ancestors / Elementalism I
Control (target group) rank (X)',NULL);
INSERT INTO "spell" VALUES(37,'spcast,ench',1,'Detect Magic','mss,mag,det,ins','Detects any character within 10ft (~3m) of the caster that has a magical or magically active item or
effect on them. Any character within range of the caster that has a magical or magically active item or effect
on them must say "Ping" in a loud clear voice. In character, this effect causes this noise, so everyone around
the Detected character is aware of the effect. If you are unsure, whether you should Ping to this effect
check with a Referee, Marshal or Game Control. This effect only works on items that have a power rating of
1 or above.','By the power of Magic I Detect Magic',NULL);
INSERT INTO "spell" VALUES(38,'spcast',1,'Distract','rng,mnd,cmd,10s','For 10 seconds (or until struck), the targets full attention is concentrated on what is directly behind
them. This effect breaks concentration. This effect is a Charm.','By the power of Magic I Distract you',NULL);
INSERT INTO "spell" VALUES(39,'spcast,ench,shmag',1,'Fumble','rng,phy,
rng,phy,for,ins','The specified item is forced from the targets grasp. The target holding it must then release the
targeted item and allow it to fall to the floor. If the item cannot be dropped for any legitimate reason,
then the item may not be used for 3 seconds. You may not just swap the item from one hand to the other
or catch it as it falls. Once the item has fallen as far as it possibly can, you may attempt to pick it up again. In
special cases, such as when allowing an item to fall could harm the item or someone nearby, you may place
the item carefully on the ground rather than dropping it. If the item is attached to your wrist/hand (in addition
to being held) then it must be released and allowed to fall from your grasp and hang loosely for 3 seconds
before being recovered. Any items that are attached to your wrist/hand must be fastened in a safe, nonconstricting
and easy to remove manner.','By the power of Magic I force you to Fumble that (item)',NULL);
INSERT INTO "spell" VALUES(40,'spcast,ench,shmag',1,'Mend','tch,phy,cur,ins','Fully repairs the targeted item that has been Shattered.','By the power of Magic I Mend this (item)',NULL);
INSERT INTO "spell" VALUES(41,'spcast,shmag',1,'Repel','rng,phy,for,10s','For 10 seconds, the target must remain at least 10ft (~3m) away from the caster. If closer than this
when the effect takes place then they must move away as quickly as it is OOC safe to do so. Neither
holding on to an object or person nor being held onto will protect you from this effect. Once the duration of
the effect is complete, you may move freely again. This has no effect on unconscious characters.','By the power of Magic I Repel you',NULL);
INSERT INTO "spell" VALUES(42,'spcast,shmag,ench',1,'Strikedown','rng,phy,for,ins','The target must fall, such that their torso makes contact with the ground. Alternately, you may
crouch such that one knee and one fist touch the ground for ten seconds. Holding onto an object or
person, or having them hold onto you, will not prevent you from falling. Once the fall is complete, you may
get back up again. Before falling, ensure that it is safe to fall in your current location.','By the power of Magic I Strike you Down',NULL);
INSERT INTO "spell" VALUES(43,'spcast,shmag,ench',1,'Trace Transport','rit,mag,det,1m','Discerns the destination or originating circle of the last transport into or out of the transport or ritual
circle. This trace must begin within 10 seconds of the transport being performed. Excess transportees being
returned from a transport will not automatically disrupt the Trace rite.','Perform a 10 second rite in a recently used transport or ritual circle and tear 1 Spell Card.',NULL);
INSERT INTO "spell" VALUES(44,'spcast,shmag,ench',2,'Blast','rng,mag,dam,ins','The target takes an Enchanted hit to the named location.','By the power of Magic I Blast your <location>',NULL);
INSERT INTO "spell" VALUES(45,'spcast,shmag,ench',2,'Chant of Melee Immunity','tch,phy,enc,cht','The caster must place both their hands on the target''s shoulders (with their permission) and
continue to chant the vocals. Whilst the caster maintains contact with the target, the target (not the
caster) is Immune to Normal damage delivered by melee weapons. If the caster breaks concentration
or contact with the target, or the chant is terminated then this effect ends. You may target yourself by
touching your chest with your primary hand during the initial casting. After the initial cast, you may take any
action, including fighting, that does not require concentration.','By the power of Magic I grant you Immunity to Melee Weapons',NULL);
INSERT INTO "spell" VALUES(46,'spcast,shmag,ench',2,'Chant of Missile Immunity','tch,phy,enc,cht','The caster must place both their hands on the target''s shoulders (with their permission) and
continue to chant the vocals. Whilst the caster maintains contact with the target, the target (not the
caster) is Immune to Normal damage delivered by projectiles and thrown weapons. If the caster
breaks concentration or contact with the target, or the chant is terminated then this effect ends. You
may target yourself by touching your chest with your primary hand during the initial casting. After the initial
cast, you may take any action, including fighting, that does not require concentration.','By the power of Magic I grant you Immunity to Missiles',NULL);
INSERT INTO "spell" VALUES(47,'spcast',2,'Enthral','rng,mnd,cmd,cht','For as long as the caster continues to talk in meaningful sentences (as per a chant), the target will follow them anywhere. Whilst under this effect the target cannot cast any spells or perform any action other than to follow the caster. This effect will be broken if the target takes a wound (not armour damage) or if the caster ceases to speak meaningfully. This effect is a Charm and breaks concentration.','By the power of Magic I Enthral you',1);
INSERT INTO "spell" VALUES(48,'spcast,ench,shmag',2,'Mute','rng,phy,for,1m','For 1 minute, the target cannot speak or make any other kind of sound vocally. This prevents the
target from using any form of IC vocal. Any Chant effects, spells or Rites the target is casting will be
interrupted.','By the power of Magic I strike you Mute',NULL);
INSERT INTO "spell" VALUES(49,'spcast',2,'Sleep','rng,mnd,cmd,10s','For 10 seconds the target falls over and drops into a deep magical sleep. The target cannot be woken
by any means. OOC you should stay aware of your surroundings and be prepared to move to a safer
location if necessary. You may not use this safety move for IC advantage.','By the power of Magic I command you Sleep',NULL);
INSERT INTO "spell" VALUES(50,'spcast,ench,shmag',2,'Shatter','rng,phy,for,ins','Destroys the targeted weapon or shield. The item can no longer be used for anything (including parrying).
This spell will have no effect on magical items (including Enchanted and Artefact weapons). Shatter does not
break an item into pieces; it merely renders the item unusable. Shatter will not work upon armour.','By the power of Magic I Shatter that (Item)',NULL);
INSERT INTO "spell" VALUES(51,'spcast,shmag',3,'Aura of Immunity','slf,mag,enc,cht','For as long as the caster maintains the chant, the caster and their equipment are Immune to all
Ranged and Mass effects. This effect cannot be countered by a Countermagic or High Countermagic.','By the power of High Magic I claim an Aura of Immunity',NULL);
INSERT INTO "spell" VALUES(52,'spcast',3,'Forbidding','mss,phy,for,cht','For as long as the caster chants, the caster may create the effect Innate Mass Repel at will. The
caster can nominate up to two other people at time of casting to be Immune to the casters Mass
Repel until the Forbidding effect ends. Whilst chanting this effect the caster cannot move faster than
a slow walk. Forbidding may not be used on large groups or in mass combat without consulting a
Referee or Marshal for safety reasons. Neither holding on to an object or person, nor being held onto, will
protect you from the Repel effect.','By the High power of Magic I claim Forbidding',NULL);
INSERT INTO "spell" VALUES(53,'spcast,ench',3,'Freeze','rng,mag,imb,1m','For 1 minute, the target is rendered Immobile.','By the High power of Magic I Freeze you',NULL);
INSERT INTO "spell" VALUES(54,'spcast,ench,shmag',3,'Mage Armour','tch,mag,enc,dwn','Until Dawn, if the target is a Mage, they gain magical armour with an AV of 2 on all locations. A Mage
bolt will end the Mage Armour effect, but will not damage the target. If all locations reach 0 AV then
this effect ends. The caster must give the target an appropriate High Magic Sigil with the targets name, the
time of casting and the effect noted on it. The target must retain this Sigil for the effect to work. If this armour
becomes damaged then any character with Spellcasting can repair it using a single Spell Card, to restore
fully the protection value of the armour on a single location by touching it, and speaking the vocals "By my
power I replenish this armour". The Mage Armour effect may be recast but the new instance will replace the
previous one. The Mage armour does not interfere with spell casting but will not prevent any effect that
would normally go through armour except for Mage Bolt, which has the above affect.','By the High power of Magic I grant you Mage Armour',NULL);
INSERT INTO "spell" VALUES(55,'spcast,ench,shmag',3,'Mage Bolt','rng,mag,dam,ins','The target location is Destroyed (ignoring a Ritual of Peace), unless the target is Immune to either
Mage Bolt or Enchanted damage. This effect treats the location as if it had an AV of 0 and inflicts
Enchanted damage. Any armour on the location will not be damaged and this effect cannot be stopped by
Immunity to the Through effect. Mage Bolt will not damage a target protected by Mage Armour, but will
destroy the Mage Armour.','By the High power of Magic I strike your (location) Mage Bolt',NULL);
INSERT INTO "spell" VALUES(56,'spcast,ench,shmag',3,'Teleport','rit,mag,spc,10s','Transports the caster only to the nearest active transport or ritual circle. The time taken to Teleport
will be as long as it takes OOC to get to the destination circle and should not be unnecessarily prolonged to
gain IC advantage. If the target location has a ritual seal in place, then the transporters arrive at the next
nearest functional circle.','Perform a rite for 10 seconds and tear 4 Spell cards.',NULL);
INSERT INTO "spell" VALUES(57,'spcast,ench,shmag',3,'Weapon of Flame','slf,mag,enc,10m','For 10 minutes the caster gains the ability to strike for Flame with any melee weapon in their
primary hand or a large melee weapon held in both hands, unless the weapon is Silver or already
does a damage type other than normal. The weapon does not count as enchanted in any way other than
to strike for enchanted damage and you may swap weapons during the spell effect.','By the High power of Magic I create a Weapon of Flame',NULL);
INSERT INTO "spell" VALUES(58,'ench',1,'Mend Armour','tch,phy,cur,ins','The location''s AV is fully restored.','By the power of Magic I Repair this Armour',NULL);
INSERT INTO "spell" VALUES(59,'ench,heal',1,'Purge Poison','tch,phy,cur,ins','Removes any alchemical venom or weapon oil that the target is currently under the effects of. Any
active effects of the poison are removed instantly, but this does not restore any damage already inflicted by
the poison.','By the power of Magic / Life I Purge poisons',NULL);
INSERT INTO "spell" VALUES(60,'ench',2,'Infuse Shield','slf,mag,enc,10s','For 1 minute, any shield the target uses will be Immune to the effects Shatter, Normal Crush and
Enchanted Crush.','By the power of Magic I Infuse your Shield with magic',NULL);
INSERT INTO "spell" VALUES(61,'ench,cor',2,'Weapon of Cold','slf,mag,enc,1m','For 1 minute the caster gains the ability to strike for Cold with any melee weapon in their primary
hand or a large melee weapon held in both hands, unless the weapon is Silver or already does a
damage type other than normal. The weapon does not count as enchanted in any way other than to strike
for enchanted damage and you may swap weapons during the spell effect.','By the power of Magic I create a Weapon of Cold',NULL);
INSERT INTO "spell" VALUES(62,'ench,heal',3,'Endurance','tch,phy,enc,dwn','Until Dawn, the target''s body locations'' maximum hits are increased by 1 (+1 LHV). (See Body
Locations, page 11 and Appendix 4, Gaining and Losing Hits, page 59). The caster must give the target an
appropriate High Magic Sigil with the targets name, the time of casting and the effect noted on it. The target
must retain this Sigil for the effect to work.','By the High power of Magic / Life I grant you Endurance',NULL);
INSERT INTO "spell" VALUES(63,'shmag,cor',2,'Halt Unliving','rng,pat,imb,10s','For 10 seconds the target Unliving is Immobilised.','By the power of Magic / Corruption I Halt that Unliving',NULL);
INSERT INTO "spell" VALUES(64,'cor',1,'Attract Unliving','rng,pat,cmd,cht','For as long as the caster chants, the targeted unliving must move via direct route toward the caster.
Holding on to an object or person will not prevent the target from being attracted, but any barriers that
prevent their physical passage, such as walls, will stop them. They may defend themselves, but may only
attack someone who is within their direct path to the caster. Once the effect has expired they can move
freely again. This effect has no influence over Intelligent unliving but they will be aware of the effect being
cast on them.','By the power of Corruption I Attract that Unliving',NULL);
INSERT INTO "spell" VALUES(65,'cor',2,'Cause Disease','slf,mag,enc,1m','The casters next successful blow with the melee weapon held in their primary hand or a large melee
weapon held in both hands will strike for the Disease damage effect, unless the weapon already
generates another damage effect. If they do not strike someone within 1 min the effect will be lost,
but they may swap weapons within this period without losing the effect. This effect does not change
the damage type of the weapon and can be used with a weapon of any damage type.','By the power of Corruption I imbue my weapon to Cause Disease',NULL);
INSERT INTO "spell" VALUES(66,'cor',2,'Cause Paralysis','slf,mag,enc,1m','The casters next successful blow with the melee weapon held in their primary hand or a large melee
weapon held in both hands will strike for the Paralysis damage effect, unless the weapon already
generates another damage effect. If they do not strike someone within 1 min the effect will be lost,
but they may swap weapons within this period without losing the effect. This effect does not change
the damage type of the weapon and can be used with a weapon of any damage type.','By the power of Corruption I imbue my weapon to inflict Paralysis',NULL);
INSERT INTO "spell" VALUES(67,'cor',3,'Cause Fatal Cound','slf,mag,enc,1m','The casters next successful blow with the melee weapon held in their primary hand or a large melee
weapon held in both hands will strike for the Fatal damage effect, unless the weapon already
generates another damage effect. If they do not strike someone within 1 min the effect will be lost,
but they may swap weapons within this period without losing the effect.','By the High power of Corruption I imbue my weapon to Cause Fatal Wound',NULL);
INSERT INTO "spell" VALUES(68,'cor',3,'Embody Unliving','rng,pat,cmd,var','The caster corrupts their own pattern into that similar to an Unliving, lasts until Dawn. They gain
Immunity to the Ritual of Peace, as well as Immunity to the effects Fatal, Paralysis, Decay and
Disease. They gain an Unliving Dismiss level of 10 and Detect as Unliving. They have no Unliving
type and cannot be Controlled. The caster does not count as Unliving in any other way. This effect
will not work on any creature that already has a Dismiss level. The caster must obtain an appropriate
High Magic Sigil with their name, the time of casting and the effect noted on it. They must retain this card for
the effect to work. If you are Dismissed, the effect will immediately terminate and you will take a Fatal effect
to the torso.','By the High power of Corruption I Embody Unliving',NULL);
INSERT INTO "spell" VALUES(69,'heal',1,'Heal Wound','tch,pat,cur,cht','This effect restores 1 point of damage to the location, for every full 10 seconds of contact during
which the caster chants the vocals. Heal does not stop any special effects, such as poisons, from
continuing to act on the target, but will restore any damage already caused by such an effect. There is no
limit to the number of hits that can be restored to a location, but you cannot restore a location to more than
its maximum value. If the chant is interrupted then this will stop the effect, but any healing already done will
remain. This effect cannot be used to restore damage caused by the Fatal, Disease or Decay effects until
these effects have been removed.','By the power of Life I Heal this wound',NULL);
INSERT INTO "spell" VALUES(70,'heal',1,'Remove Paralysis','tch,pat,cur,ins','Removes any Paralysis effect from which the target may be suffering. This effect will not heal any
damage.','By the power of Life I Remove Paralysis from this body',NULL);
INSERT INTO "spell" VALUES(71,'heal',2,'Free Mind','tch,mnd,cur,ins','Removes all mind effects except Beguile that are currently affecting the target. This effect is only
effective upon a character with a living pattern.','By the power of Life I Free your Mind',NULL);
INSERT INTO "spell" VALUES(72,'heal',2,'Heal Fatal Wound','tch,pat,cur,10s','By chanting this spell for 10 seconds, the caster can remove a Fatal effect from the indicated
location. This does not heal any damage on the location, including the damage done by the Fatal.
Heal Fatal Wound must be cast on a location to remove the Fatal effects before that location can be healed.','By the power of Life I Heal this Fatal Wound',NULL);
INSERT INTO "spell" VALUES(73,'heal',2,'Purge All Poisons','tch,phy,cur,ins','Removes any alchemical venom, weapon oil, ingestive or vapour poisons that the target is currently
under the effects of. Any active effects of the poison are removed instantly, but this does not restore any
damage already inflicted by the poison.','By the power of Life I Purge All Poisons',NULL);
INSERT INTO "spell" VALUES(74,'heal',3,'Rally','mss,mnd,cur,cht','For as long as the caster continues to chant the vocals this effect will make all characters, including
the caster, within 10ft (~3m) of the caster Immune to Fear effects.','By the High power of Life Rally to me!',NULL);
INSERT INTO "spell" VALUES(75,'heal',3,'Total Heal','tch,pat,cur,10s','After chanting for 10 seconds whilst touching the target, this effect will remove any alchemical
poison, the effects Paralysis, Fatal, Decay, and Disease and restore all locations on the target to full
body hits (LHV), in this order.','By the High power of Life I Total Heal this body',NULL);
INSERT INTO "spell" VALUES(76,'necro',1,'Corrupt Body','rit,mag,spc,1m','Corrupts and rapidly decomposes a dead body so that the pattern is sent to the Plane of Unlife. The
pattern does not go to its Ancestor. The body may rise as an uncontrolled zombie or skeleton at some future
point, as dictated by the Head of Plot. This effect will leave a rotten, unrecognisable corpse behind. This is a
first tier corpse effect, and will not work on a body that has a first or second tier corpse effect already applied
to it.','Role-play at least a 1-minute ceremony over a dead body and tear 1 Spell Card.',NULL);
INSERT INTO "spell" VALUES(77,'necro',2,'Full Repair Unliving','tch,phy,cur,ins','Restores all body hits to the target location on an unliving. This will not be effective on a character
under the effects Disease, Decay or on a location suffering from a Fatal Wound.','By the power of Necromancy I Fully Repair this Unlivings (location)',NULL);
INSERT INTO "spell" VALUES(78,'necro',3,'Greater Corrupt Body','rit,mag,spc,1m','Corrupts and rapidly decomposes a dead body so that the pattern is sent to the Plane of Unlife. The
pattern does not go to its Ancestor, and may rise as an uncontrolled wraith at some future point, as dictated
by the Head of Plot. This effect will leave no corpse behind. This is a second tier corpse effect, and will not
work on a body that has a second tier corpse effect already applied to it.','Role-play at least a 1-minute ceremony over a dead body and tear 4 Spell cards.',NULL);
INSERT INTO "spell" VALUES(79,'daem',3,'High Control Daemon','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 4 Spell cards when casting this effect. If the target is of the target group and
has a Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by
the caster. When Controlled, the target creature will do anything commanded of them by the Controller, but
this will not affect memories. No counter or Immunity can stop a Control unless it says so explicitly. The
duration of the effect will vary depending on the control rank of the target character.','By the High power of the Dark Ancestors / Magic / Daemonology / the Ancestors / Elementalism I
Control (target group) rank (X)',NULL);
INSERT INTO "spell" VALUES(80,'daem',1,'Control Daemon','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 2 Spell cards when casting this effect. If the target is Daemon and has a
Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by the
caster. If Controlled, the target who is a member of the Daemon will do anything commanded of them
by the Controller, but this will not affect memories. No counter or Immunity can stop a Control unless it says
so explicitly. The duration of the effect will vary depending on the Dismiss rank of the creature Controlled.','By the power of Daemonology I Control Daemon rank (X)',NULL);
INSERT INTO "spell" VALUES(81,'daem',2,'Full Cure Daemon','tch,phy,cur,ins','Restores all body hits to the target location on creature belonging to the (target group). This will not
be effective on a location suffering from a Fatal Wound, or on a character under the effects Disease or
Decay.','By the power of Daemonology I Fully Cure this Daemon''s (location)',NULL);
INSERT INTO "spell" VALUES(82,'theo',2,'Full Cure Ancestral','tch,phy,cur,ins','Restores all body hits to the target location on creature belonging to the (target group). This will not
be effective on a location suffering from a Fatal Wound, or on a character under the effects Disease or
Decay.','By the power of Theology I Fully Cure this Ancestrals (location)',NULL);
INSERT INTO "spell" VALUES(83,'ele',2,'Full Cure Elemental','tch,phy,cur,ins','Restores all body hits to the target location on creature belonging to the (target group). This will not
be effective on a location suffering from a Fatal Wound, or on a character under the effects Disease or
Decay.','By the power of Elementalism I Fully Cure this Elementals (location)',NULL);
INSERT INTO "spell" VALUES(84,'ele',1,'Control Elemental','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 2 Spell cards when casting this effect. If the target is Elemental and has a
Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by the
caster. If Controlled, the target who is a member of the Elemental will do anything commanded of them
by the Controller, but this will not affect memories. No counter or Immunity can stop a Control unless it says
so explicitly. The duration of the effect will vary depending on the Dismiss rank of the creature Controlled.','By the power of the Elementalism I Control Elemental rank (X)',NULL);
INSERT INTO "spell" VALUES(85,'theo',1,'Control Ancestral','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 2 Spell cards when casting this effect. If the target is Ancestral and has a
Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by the
caster. If Controlled, the target who is a member of the Ancestral will do anything commanded of them
by the Controller, but this will not affect memories. No counter or Immunity can stop a Control unless it says
so explicitly. The duration of the effect will vary depending on the Dismiss rank of the creature Controlled.','By the power of Theology I Control Ancestral rank (X)',NULL);
INSERT INTO "spell" VALUES(86,'theo',3,'High Control Ancestral','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 4 Spell cards when casting this effect. If the target is of the target group and
has a Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by
the caster. When Controlled, the target creature will do anything commanded of them by the Controller, but
this will not affect memories. No counter or Immunity can stop a Control unless it says so explicitly. The
duration of the effect will vary depending on the control rank of the target character.','By the High power of the Dark Ancestors / Magic / Daemonology / the Ancestors / Elementalism I
Control (target group) rank (X)',NULL);
INSERT INTO "spell" VALUES(87,'ele',3,'High Control Elemental','rng,pat,cmd,var','This spell can be part of a Wedge. (X) is equal to the total number of spell cards used in casting. The
caster may use up to 4 Spell cards when casting this effect. If the target is of the target group and
has a Control level equal to or lower than the rank (X) of Control cast, then they are Controlled by
the caster. When Controlled, the target creature will do anything commanded of them by the Controller, but
this will not affect memories. No counter or Immunity can stop a Control unless it says so explicitly. The
duration of the effect will vary depending on the control rank of the target character.','By the High power of the Dark Ancestors / Magic / Daemonology / the Ancestors / Elementalism I
Control (target group) rank (X)',NULL);
