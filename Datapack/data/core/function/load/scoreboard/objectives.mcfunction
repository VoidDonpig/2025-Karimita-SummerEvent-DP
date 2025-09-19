#> core:load/scoreboard/objectives
#
# add objectives
#
# @within core:load/scoreboard/

# system
    scoreboard objectives add world dummy
    scoreboard objectives add constant dummy
    scoreboard objectives add temporary dummy
    scoreboard objectives add repeat_time dummy

# player
    scoreboard objectives add player.id dummy
    scoreboard objectives add previous_slot dummy
    scoreboard objectives add attack_cooltime dummy
    scoreboard objectives add attack_speed dummy
    scoreboard objectives add bow_used used:bow
    scoreboard objectives add crossbow_used used:crossbow
    scoreboard objectives add health_ratio dummy
    scoreboard objectives add rclick used:carrot_on_a_stick
    scoreboard objectives add shortbow_cooltime dummy
    scoreboard objectives add autokill_timer dummy
    scoreboard objectives add death deathCount
    scoreboard objectives add arrow_damage_increase dummy
    scoreboard objectives add arrow_speed_increase dummy
    scoreboard objectives add safe_fall_distance dummy
    scoreboard objectives add cosmetic dummy
    scoreboard objectives add cosmetic_timer dummy
    scoreboard objectives add gold dummy
    scoreboard objectives add gold_queue dummy
    scoreboard objectives add belowname_display dummy
    scoreboard objectives add belowname dummy

    scoreboard objectives add new_health dummy
    scoreboard objectives add old_health dummy
    scoreboard objectives add health_updated dummy
    scoreboard objectives add health_update_timer dummy

    # status
        scoreboard objectives add health health {"text": "❤","color": "red"}
        scoreboard objectives add max_health dummy
        scoreboard objectives add mana dummy
        scoreboard objectives add max_mana dummy
        scoreboard objectives add armor dummy
        scoreboard objectives add armor_toughness dummy
        scoreboard objectives add movement_speed dummy
        scoreboard objectives add attack_damage dummy
        scoreboard objectives add attack_range dummy
        scoreboard objectives add luck dummy
        scoreboard objectives add knockback_resistance dummy
        scoreboard objectives add ferocity dummy
        scoreboard objectives add ferocity_damage dummy
        scoreboard objectives add ferocity_count dummy
        scoreboard objectives add shadow_strike_damage dummy
        scoreboard objectives add shadow_strike_count dummy
    # level
        # exp_queue
            scoreboard objectives add exp_queue.combat dummy
    # class
        # level
            scoreboard objectives add class.knight.level dummy
            scoreboard objectives add class.archer.level dummy
            scoreboard objectives add class.assassin.level dummy
            scoreboard objectives add class.wizard.level dummy
            scoreboard objectives add class.healer.level dummy
        # exp
            scoreboard objectives add class.knight.exp dummy
            scoreboard objectives add class.archer.exp dummy
            scoreboard objectives add class.assassin.exp dummy
            scoreboard objectives add class.wizard.exp dummy
            scoreboard objectives add class.healer.exp dummy
        # total_exp
            scoreboard objectives add class.knight.total_exp dummy
            scoreboard objectives add class.archer.total_exp dummy
            scoreboard objectives add class.assassin.total_exp dummy
            scoreboard objectives add class.wizard.total_exp dummy
            scoreboard objectives add class.healer.total_exp dummy
        # next_exp
            scoreboard objectives add class.knight.next_exp dummy
            scoreboard objectives add class.archer.next_exp dummy
            scoreboard objectives add class.assassin.next_exp dummy
            scoreboard objectives add class.wizard.next_exp dummy
            scoreboard objectives add class.healer.next_exp dummy
    # class
        scoreboard objectives add charging_bow dummy
        scoreboard objectives add indominatable_spirit_timer dummy
        scoreboard objectives add stone_castle_cooltime dummy
        scoreboard objectives add powerful_slash_cooltime dummy
        scoreboard objectives add healing_aura_timer dummy
        scoreboard objectives add wish_cooltime dummy
        scoreboard objectives add healing_circle_timer dummy
        scoreboard objectives add bloodlust_timer dummy
        scoreboard objectives add bloodlust_count dummy
        scoreboard objectives add bloodlust_attack_damage dummy
        scoreboard objectives add vicacious_ferocity_timer dummy
        scoreboard objectives add vicacious_ferocity_cooltime dummy

# mob
    scoreboard objectives add mob.id dummy
    # mob health
        scoreboard objectives add mob.health dummy
        scoreboard objectives add mob.max_health dummy
    # timer
        scoreboard objectives add ai_timer.1 dummy
        scoreboard objectives add ai_timer.2 dummy
        scoreboard objectives add ai_timer.3 dummy
        scoreboard objectives add ai_timer.4 dummy
        scoreboard objectives add ai_timer.5 dummy
        scoreboard objectives add ai_timer.6 dummy
        scoreboard objectives add ai_timer.7 dummy
        scoreboard objectives add movement_timer.1 dummy
        scoreboard objectives add death_timer.1 dummy
        scoreboard objectives add death_timer.2 dummy
        scoreboard objectives add ai_counter.1 dummy
        scoreboard objectives add ai_counter.2 dummy
        scoreboard objectives add ai_counter.3 dummy
        scoreboard objectives add ai_counter.4 dummy
        scoreboard objectives add ai_counter.5 dummy
        scoreboard objectives add ai_counter.6 dummy
        scoreboard objectives add ai_counter.7 dummy
        scoreboard objectives add dialogue_timer.1 dummy

# asset
    scoreboard objectives add asset_timer.1 dummy
    scoreboard objectives add spawner_timer dummy
    scoreboard objectives add spawner_health dummy
    # cooltime
        scoreboard objectives add flame_wand_cooltime dummy
        scoreboard objectives add flost_wand_cooltime dummy
        scoreboard objectives add lightning_wand_cooltime dummy
        scoreboard objectives add healing_wand_cooltime dummy
        scoreboard objectives add eternal_carrot_cooltime dummy

# ui
    scoreboard objectives add ui_page dummy
    scoreboard objectives add crafter_page dummy
    scoreboard objectives add shop_page dummy