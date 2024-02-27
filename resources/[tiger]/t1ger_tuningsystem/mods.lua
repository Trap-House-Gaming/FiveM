Config.Mods = { -- Price is percentage from 0-100 based on vehicle price.
    modSpoilers = {
        label = 'Spoiler', modType = 0, price = 4.50, category = 'bodyworks', point = 'rear',
        prop = 'imp_prop_impexp_spoiler_01a', pos = {0.0, -0.2, -0.2}, rot = {0.0, 0.0, -180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modFrontBumper = {
        label = 'Front Bumper', modType = 1, price = 6.50, category = 'bodyworks', point = 'front',
        prop = 'imp_prop_impexp_front_bumper_01a', pos = {0.0, -0.25, -0.15}, rot = {0.0, 0.0, -180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modRearBumper = {
        label = 'Rear Bumper', modType = 2, price = 6.10, category = 'bodyworks', point = 'rear',
        prop = 'imp_prop_impexp_rear_bumper_03a', pos = {0.0, -0.25, -0.15}, rot = {-20.0, 0.0, -180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSideSkirt = {
        label = 'Skirt', modType = 3, price = 4.10, category = 'bodyworks', point = 'vehicle',
        prop = 'imp_prop_impexp_rear_bumper_01a', pos = {0.0, -0.25, -0.15}, rot = {-20.0, 0.0, -180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modExhaust = {
        label = 'Exhaust', modType = 4, price = 3.75, category = 'bodyworks', point = 'rear',
        prop = 'imp_prop_impexp_exhaust_01', pos = {-0.1, -0.20, -0.20}, rot = {20.0, 10.0, 90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modFrame = {
        label = 'Roll Cage', modType = 5, price = 3.65, category = 'chassis', point = 'vehicle',
        prop = 'imp_prop_impexp_rear_bars_01b', pos = {0.0, 0.60, -0.26}, rot = {-30.0, 0.0, -180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modGrille = {
        label = 'Grill', modType = 6, price = 4.25, category = 'exterior', point = 'front',
        prop = 'imp_prop_impexp_radiator_01', pos = {0.0, -0.28, -0.23}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modHood = {
        label = 'Hood', modType = 7, price = 5.80, category = 'bodyworks', point = 'front',
        prop = 'imp_prop_impexp_bonnet_04a', pos = {0.0, 0.20, 0.12}, rot = {-20.0, 0.0, 180.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modFender = {
        label = 'Left Fender', modType = 8, price = 5.50, category = 'bodyworks', point = 'vehicle',
        prop = 'imp_prop_impexp_car_panel_01a', pos = {-0.15, -0.18, -0.16}, rot = {5.0, 0.0, -90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modRightFender = {
        label = 'Right Fender', modType = 9, price = 5.25, category = 'bodyworks', point = 'vehicle',
        prop = 'imp_prop_impexp_car_panel_01a', pos = {0.0, -0.0, -0.4}, rot = {0.0, 0.0, 90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modRoof = {
        label = 'Roof', modType = 10, price = 4.90, category = 'bodyworks', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {40.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modEngine = {
        label = 'Engine', modType = 11, category = 'performance', point = 'engine',
        prop = 'imp_prop_impexp_engine_part_01a', pos = {0.0, -0.1, -0.20}, rot = {40.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modBrakes = {
        label = 'Brakes', modType = 12, category = 'performance', point = 'wheel',
        prop = 'imp_prop_impexp_brake_caliper_01a', pos = {0.0, -0.1, -0.2}, rot = {0.0, 90.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modTransmission = {
        label = 'Transmission', modType = 13, category = 'performance', point = 'engine',
        prop = 'imp_prop_impexp_gearbox_01', pos = {0.0, -0.1, -0.2}, rot = {0.0, 0.0, 90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modHorns = {
        label = 'Horn', modType = 14, category = 'exterior', point = 'engine',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSuspension = {
        label = 'Suspension', modType = 15, category = 'performance', point = 'wheel',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modArmor = {
        label = 'Armor', modType = 16, category = 'performance', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modNitrous = {label = 'Nitrous', modType = 17, category = 'performance', prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0}},
    modTurbo = {
        label = 'Turbo', modType = 18, category = 'performance', point = 'engine',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSmokeEnabled = {
        label = 'Tyre Smoke', modType = 20, price = 15, category = 'wheels', point = 'wheel',
        prop = 'imp_prop_impexp_tyre_01a', pos = {0.0, -0.10, 0.15}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modXenon = {
        label = 'Xenon Kit', modType = 22, category = 'lights', point = 'engine',
        prop = 'prop_cs_package_01', pos = {0.0, -0.05, -0.1}, rot = {100.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modFrontWheels = {
        label = 'Wheels', modType = 23, category = 'wheels', point = 'wheel',
        prop = 'imp_prop_impexp_tyre_01c', pos = {0.0, -0.1, 0.2}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modBackWheels = {
        label = 'Wheels Rear', modType = 24, category = '', point = 'wheel',
        prop = 'imp_prop_impexp_tyre_01c', pos = {0.0, -0.1, 0.2}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modPlateHolder = {
        label = 'Plate Holder', modType = 25, category = 'exterior', price = 4.95, point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mp_intro_seq@', name = 'mp_mech_fix', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modVanityPlate = { -- sometimes is: CANARDS, SPLITTER, 
        label = 'Vanity Plates', modType = 26, category = 'exterior', price = 3.75, point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mp_intro_seq@', name = 'mp_mech_fix', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modTrimA = {
        label = 'Trim A', modType = 27, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modOrnaments = {
        label = 'Ornaments', modType = 28, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modDashboard = {
        label = 'Dashboard', modType = 29, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_package_01', pos = {0.0, -0.05, -0.1}, rot = {100.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modDial = {
        label = 'Gauges', modType = 30, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modDoorSpeaker = {
        label = 'Door Speaker', modType = 31, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSeats = {
        label = 'Seats', modType = 32, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_ejector_seat_01', pos = {0.0, -0.3, 0.07}, rot = {30.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSteeringWheel = {
        label = 'Steering Wheel', modType = 33, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modShifterLeavers = {
        label = 'Shifter Leaver', modType = 34, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modAPlate = {
        label = 'Plaque', modType = 35, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modSpeakers = {
        label = 'Speaker', modType = 36, price = 2.25, category = 'interior', point = 'vehicle',
        prop = 'sm_prop_smug_speaker', pos = {0.0, -0.1, -0.2}, rot = {-15.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modTrunk = {
        label = 'Trunk', modType = 37, price = 2.25, category = 'interior', point = 'rear',
        prop = 'imp_prop_impexp_trunk_01a', pos = {0.0, 0.15, 0.1}, rot = {30.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modHydrolic = {
        label = 'Hydraulics', modType = 38, price = 5.85, category = 'exterior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modEngineBlock = {
        label = 'Engine Block', modType = 39, price = 4.75, category = 'enginebay', point = 'engine',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modAirFilter = {
        label = 'Air Filters', modType = 40, price = 4.75, category = 'enginebay', point = 'engine',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modStruts = {
        label = 'Strut Brace', modType = 41, price = 4.75, category = 'enginebay', point = 'engine',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modArchCover = {
        label = 'Arch Cover', modType = 42, price = 3.25, category = 'chassis', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modAerials = {
        label = 'Aerials', modType = 43, price = 3.10, category = 'chassis', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modTrimB = {
        label = 'Trim B', modType = 44, price = 3.85, category = 'chassis', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modTank = {
        label = 'Fuel Tank', modType = 45, price = 3.90, category = 'chassis', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modWindows = {
        label = 'Left Door', modType = 46, price = 3.20, category = 'exterior', point = 'vehicle',
        prop = 'imp_prop_impexp_car_door_04a', pos = {-0.7, -0.2, 0.0}, rot = {0.0, -10.0, 90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modDoorR = {
        label = 'Right Door', modType = 47, price = 3.25, category = 'exterior', point = 'vehicle',
        prop = 'imp_prop_impexp_car_door_04a', pos = {-0.7, -0.2, 0.0}, rot = {0.0, -10.0, 90.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modLivery = {
        label = 'Livery', modType = 48, price = 10, category = 'respray', point = 'vehicle',
        prop = 'v_ind_cfwrap', pos = {0.0, -0.10, -0.15}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    modLightbar = {
        label = 'Lightbar', modType = 49, price = 2.75, category = 'exterior', point = 'vehicle',
        prop = 'prop_cs_cardbox_01', pos = {0.0, -0.2, -0.1}, rot = {135.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    neonEnabled = {
        label = 'Neon Kits', modType = 'neonEnabled', category = 'lights', point = 'engine',
        prop = 'prop_cs_package_01', pos = {0.0, -0.05, -0.1}, rot = {100.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    xenonColor = {
        label = 'Xenon Colors', modType = 'xenonColor', category = '', point = 'engine',
        prop = 'prop_cs_package_01', pos = {0.0, -0.05, -0.1}, rot = {100.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    neonColor = {
        label = 'Neon Colors', modType = 'neonColor', category = '', point = 'engine',
        prop = 'prop_cs_package_01', pos = {0.0, -0.05, -0.1}, rot = {100.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    tyreSmokeColor = {
        label = 'Tyre Smoke Color', modType = 'tyreSmokeColor', category = '', point = 'wheel',
        prop = 'imp_prop_impexp_tyre_01a', pos = {0.0, -0.10, 0.15}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    plateIndex = {
        label = 'License Plates', modType = 'plateIndex', category = 'exterior', point = 'rear',
        prop = 'p_num_plate_01', pos = {0.01, -0.1, -0.18}, rot = {-60.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', name = 'machinic_loop_mechandplayer', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    }, 
    windowTint = {
        label = 'Window Tints', modType = 'windowTint', category = 'exterior', point = 'vehicle',
        prop = 'h4_prop_yacht_glass_04', pos = {0.0, -0.1, 0.3}, rot = {0.0, 0.0, 0.0},
        anim = {
            idle = {dict = 'anim@heists@box_carry@', name = 'idle', blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    primaryRespray = {
        label = 'Primary Color', modType = 'primaryRespray', category = 'respray', point = 'vehicle',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    secondaryRespray = {
        label = 'Secondary Color', modType = 'secondaryRespray', category = 'respray', point = 'vehicle',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    pearlescentColor = {
        label = 'Pearlescent Color', modType = 'pearlescentColor', category = 'respray', point = 'vehicle',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    wheelColor = {
        label = 'Wheel Color', modType = 'wheelColor', category = 'wheels', point = 'wheel',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    dashboardColor = {
        label = 'Dashboard Color', modType = 'dashboardColor', category = 'respray', point = 'vehicle',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    },
    interiorColor = {
        label = 'Interior Color', modType = 'interiorColor', category = 'respray', point = 'vehicle',
        prop = 'ng_proc_spraycan01b', pos = {0.072, 0.041, -0.06}, rot = {33.0, 38.0, 0.0},
        anim = {
            idle = {dict = nil, name = nil, blendIn = 4.0, blendOut = 1.0, duration = -1, flags = 49},
            install = {dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', name = 'weed_spraybottle_crouch_spraying_03_inspector', blendIn = 2.0, blendOut = 2.0, duration = -1, flag = 1}
        }
    }
}