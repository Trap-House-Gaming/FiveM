local Components = {
    {label = _U('sex'), name = 'sex', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('ped'), name = 'ped', value = 1, min = 1, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('mom'), name = 'mom', value = 21, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('mom_2'), name = 'mom_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('dad'), name = 'dad', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('dad_2'), name = 'dad_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('resemblance'), name = 'face_md_weight', value = 50, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('skin_tone'), name = 'skin_md_weight', value = 50, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_1'), name = 'nose_1', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_2'), name = 'nose_2', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_3'), name = 'nose_3', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_4'), name = 'nose_4', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_5'), name = 'nose_5', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('nose_6'), name = 'nose_6', value = 0, min = -10, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('cheeks_1'), name = 'cheeks_1', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('cheeks_2'), name = 'cheeks_2', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('cheeks_3'), name = 'cheeks_3', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('lip_fullness'), name = 'lip_thickness', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('jaw_bone_width'), name = 'jaw_1', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('jaw_bone_length'), name = 'jaw_2', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('chin_height'), name = 'chin_1', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('chin_length'), name = 'chin_2', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('chin_width'), name = 'chin_3', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('chin_hole'), name = 'chin_4', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('neck_thickness'), name = 'neck_thickness', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('hair_1'), name = 'hair_1', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('hair_2'), name = 'hair_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('hair_color_1'), name = 'hair_color_1', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('hair_color_2'), name = 'hair_color_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65},
    {label = _U('tshirt_1'), name = 'tshirt_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, componentId = 8},
    {label = _U('tshirt_2'), name = 'tshirt_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'tshirt_1'},
    {label = _U('torso_1'), name = 'torso_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, componentId = 11},
    {label = _U('torso_2'), name = 'torso_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'torso_1'},
    {label = _U('decals_1'), name = 'decals_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, componentId = 10},
    {label = _U('decals_2'), name = 'decals_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'decals_1'},
    {label = _U('arms'), name = 'arms', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('arms_2'), name = 'arms_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('pants_1'), name = 'pants_1', value = 0, min = 0, zoomOffset = 0.8, camOffset = -0.5, componentId = 4},
    {label = _U('pants_2'), name = 'pants_2', value = 0, min = 0, zoomOffset = 0.8, camOffset = -0.5, textureof = 'pants_1'},
    {label = _U('shoes_1'), name = 'shoes_1', value = 0, min = 0, zoomOffset = 0.8, camOffset = -0.8, componentId = 6},
    {label = _U('shoes_2'), name = 'shoes_2', value = 0, min = 0, zoomOffset = 0.8, camOffset = -0.8, textureof = 'shoes_1'},
    {label = _U('mask_1'), name = 'mask_1', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, componentId = 1},
    {label = _U('mask_2'), name = 'mask_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, textureof = 'mask_1'},
    {label = _U('bproof_1'), name = 'bproof_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, componentId = 9},
    {label = _U('bproof_2'), name = 'bproof_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'bproof_1'},
    {label = _U('chain_1'), name = 'chain_1', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, componentId = 7},
    {label = _U('chain_2'), name = 'chain_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, textureof = 'chain_1'},
    {label = _U('helmet_1'), name = 'helmet_1', value = -1, min = -1, zoomOffset = 0.6, camOffset = 0.65, componentId = 0},
    {label = _U('helmet_2'), name = 'helmet_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, textureof = 'helmet_1'},
    {label = _U('glasses_1'), name = 'glasses_1', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, componentId = 1},
    {label = _U('glasses_2'), name = 'glasses_2', value = 0, min = 0, zoomOffset = 0.6, camOffset = 0.65, textureof = 'glasses_1'},
    {label = _U('watches_1'), name = 'watches_1', value = -1, min = -1, zoomOffset = 0.75, camOffset = 0.15, componentId = 6},
    {label = _U('watches_2'), name = 'watches_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'watches_1'},
    {label = _U('bracelets_1'), name = 'bracelets_1', value = -1, min = -1, zoomOffset = 0.75, camOffset = 0.15, componentId = 7},
    {label = _U('bracelets_2'), name = 'bracelets_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'bracelets_1'},
    {label = _U('bag'), name = 'bags_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, componentId = 5},
    {label = _U('bag_color'), name = 'bags_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15, textureof = 'bags_1'},
    {label = _U('eye_color'), name = 'eye_color', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eye_squint'), name = 'eye_squint', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_size'), name = 'eyebrows_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_type'), name = 'eyebrows_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_color_1'), name = 'eyebrows_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_color_2'), name = 'eyebrows_4', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_height'), name = 'eyebrows_5', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('eyebrow_depth'), name = 'eyebrows_6', value = 0, min = -10, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('makeup_type'), name = 'makeup_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('makeup_thickness'), name = 'makeup_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('makeup_color_1'), name = 'makeup_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('makeup_color_2'), name = 'makeup_4', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('lipstick_type'), name = 'lipstick_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('lipstick_thickness'), name = 'lipstick_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('lipstick_color_1'), name = 'lipstick_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('lipstick_color_2'), name = 'lipstick_4', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('ear_accessories'), name = 'ears_1', value = -1, min = -1, zoomOffset = 0.4, camOffset = 0.65, componentId = 2},
    {label = _U('ear_accessories_color'), name = 'ears_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65, textureof = 'ears_1'},
    {label = _U('chest_hair'), name = 'chest_1', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('chest_hair_1'), name = 'chest_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('chest_color'), name = 'chest_3', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('bodyb'), name = 'bodyb_1', value = -1, min = -1, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('bodyb_size'), name = 'bodyb_2', value = 0, min = 0, zoomOffset = 0.75, camOffset = 0.15},
    {label = _U('bodyb_extra'), name = 'bodyb_3', value = -1, min = -1, zoomOffset = 0.4, camOffset = 0.15},
    {label = _U('bodyb_extra_thickness'), name = 'bodyb_4', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.15},
    {label = _U('wrinkles'), name = 'age_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('wrinkle_thickness'), name = 'age_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('blemishes'), name = 'blemishes_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('blemishes_size'), name = 'blemishes_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('blush'), name = 'blush_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('blush_1'), name = 'blush_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('blush_color'), name = 'blush_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('complexion'), name = 'complexion_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('complexion_1'), name = 'complexion_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('sun'), name = 'sun_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('sun_1'), name = 'sun_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('freckles'), name = 'moles_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('freckles_1'), name = 'moles_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('beard_type'), name = 'beard_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('beard_size'), name = 'beard_2', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('beard_color_1'), name = 'beard_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('beard_color_2'), name = 'beard_4', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},

    {label = _U('t_1'), name = 't_head_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_head_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_head_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_hair_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_hair_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_hair_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_torso_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_torso_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_torso_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_larm_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_larm_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_larm_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_rarm_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rarm_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rarm_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_lleg_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_lleg_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_lleg_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


    {label = _U('t_1'), name = 't_rleg_1', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_2', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_3', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_4', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_5', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_6', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_7', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_8', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_9', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_10', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_11', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_12', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_13', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_14', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_15', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_16', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_17', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_18', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_1'), name = 't_rleg_19', value = 0, min = 0, zoomOffset = 0.4, camOffset = 0.65},
    {label = _U('t_2'), name = 't_rleg_20', value = 1, min = 1, zoomOffset = 0.4, camOffset = 0.65},


}

local LastSex = -1
local LastPed = 1
local LoadSkin = nil
local LoadClothes = nil
local Character = {}

for i = 1, #Components, 1 do
    Character[Components[i].name] = Components[i].value
end

function LoadDefaultModel(malePed, cb, ped)
    print('Loading Models Sex:', malePed, ped)
    
	local ped = ped or 1
    local characterModel

    if malePed then
        characterModel = GetHashKey(Config.Models[0][ped])
    else
        characterModel = GetHashKey(Config.Models[1][ped])
    end

    Character['ped'] = ped

    if not IsModelInCdimage(characterModel) then return end
    RequestModel(characterModel)

    while not HasModelLoaded(characterModel) do
        RequestModel(characterModel)
        Citizen.Wait(0)
    end

    print('Setting player sex:', malePed, ped)
    SetPlayerModel(PlayerId(), characterModel)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetPedHeadBlendData(PlayerPedId(), 0, 0, 0, 0, 0, 0, 0, 0, 0, false)
    SetModelAsNoLongerNeeded(characterModel)

    if cb ~= nil then
        cb()
    end

    TriggerEvent('skinchanger:modelLoaded')
end

function GetMaxVals()
    local playerPed = PlayerPedId()

    local data = {
        sex = 1,
        ped = #Config.Models[Character['sex']],
        mom = GetNumberOfPedDrawableVariations(playerPed, 0),
        mom_2 = GetNumberOfPedDrawableVariations(playerPed, 0),
        dad = GetNumberOfPedDrawableVariations(playerPed, 0),
        dad_2 = GetNumberOfPedDrawableVariations(playerPed, 0),
        face_md_weight = 100,
        skin_md_weight = 100,
        nose_1 = 10,
        nose_2 = 10,
        nose_3 = 10,
        nose_4 = 10,
        nose_5 = 10,
        nose_6 = 10,
        cheeks_1 = 10,
        cheeks_2 = 10,
        cheeks_3 = 10,
        lip_thickness = 10,
        jaw_1 = 10,
        jaw_2 = 10,
        chin_1 = 10,
        chin_2 = 10,
        chin_3 = 10,
        chin_4 = 10,
        neck_thickness = 10,
        age_1 = GetNumHeadOverlayValues(3) - 1,
        age_2 = 10,
        beard_1 = GetNumHeadOverlayValues(1) - 1,
        beard_2 = 10,
        beard_3 = GetNumHairColors() - 1,
        beard_4 = GetNumHairColors() - 1,
        hair_1 = GetNumberOfPedDrawableVariations(playerPed, 2) - 1,
        hair_2 = GetNumberOfPedTextureVariations(playerPed, 2, Character['hair_1']) - 1,
        hair_color_1 = GetNumHairColors() - 1,
        hair_color_2 = GetNumHairColors() - 1,
        eye_color = 31,
        eye_squint = 10,
        eyebrows_1 = GetNumHeadOverlayValues(2) - 1,
        eyebrows_2 = 10,
        eyebrows_3 = GetNumHairColors() - 1,
        eyebrows_4 = GetNumHairColors() - 1,
        eyebrows_5 = 10,
        eyebrows_6 = 10,
        makeup_1 = GetNumHeadOverlayValues(4) - 1,
        makeup_2 = 10,
        makeup_3 = GetNumHairColors() - 1,
        makeup_4 = GetNumHairColors() - 1,
        lipstick_1 = GetNumHeadOverlayValues(8) - 1,
        lipstick_2 = 10,
        lipstick_3 = GetNumHairColors() - 1,
        lipstick_4 = GetNumHairColors() - 1,
        blemishes_1 = GetNumHeadOverlayValues(0) - 1,
        blemishes_2 = 10,
        blush_1 = GetNumHeadOverlayValues(5) - 1,
        blush_2 = 10,
        blush_3 = GetNumHairColors() - 1,
        complexion_1 = GetNumHeadOverlayValues(6) - 1,
        complexion_2 = 10,
        sun_1 = GetNumHeadOverlayValues(7) - 1,
        sun_2 = 10,
        moles_1 = GetNumHeadOverlayValues(9) - 1,
        moles_2 = 10,
        chest_1 = GetNumHeadOverlayValues(10) - 1,
        chest_2 = 10,
        chest_3 = GetNumHairColors() - 1,
        bodyb_1 = GetNumHeadOverlayValues(11) - 1,
        bodyb_2 = 10,
        bodyb_3 = GetNumHeadOverlayValues(12) - 1,
        bodyb_4 = 10,
        ears_1 = GetNumberOfPedPropDrawableVariations(playerPed, 2) - 1,
        ears_2 = GetNumberOfPedPropTextureVariations(playerPed, 2, Character['ears_1'] - 1),
        tshirt_1 = GetNumberOfPedDrawableVariations(playerPed, 8) - 1,
        tshirt_2 = GetNumberOfPedTextureVariations(playerPed, 8, Character['tshirt_1']) - 1,
        torso_1 = GetNumberOfPedDrawableVariations(playerPed, 11) - 1,
        torso_2 = GetNumberOfPedTextureVariations(playerPed, 11, Character['torso_1']) - 1,
        decals_1 = GetNumberOfPedDrawableVariations(playerPed, 10) - 1,
        decals_2 = GetNumberOfPedTextureVariations(playerPed, 10, Character['decals_1']) - 1,
        arms = GetNumberOfPedDrawableVariations(playerPed, 3) - 1,
        arms_2 = 10,
        pants_1 = GetNumberOfPedDrawableVariations(playerPed, 4) - 1,
        pants_2 = GetNumberOfPedTextureVariations(playerPed, 4, Character['pants_1']) - 1,
        shoes_1 = GetNumberOfPedDrawableVariations(playerPed, 6) - 1,
        shoes_2 = GetNumberOfPedTextureVariations(playerPed, 6, Character['shoes_1']) - 1,
        mask_1 = GetNumberOfPedDrawableVariations(playerPed, 1) - 1,
        mask_2 = GetNumberOfPedTextureVariations(playerPed, 1, Character['mask_1']) - 1,
        bproof_1 = GetNumberOfPedDrawableVariations(playerPed, 9) - 1,
        bproof_2 = GetNumberOfPedTextureVariations(playerPed, 9, Character['bproof_1']) - 1,
        chain_1 = GetNumberOfPedDrawableVariations(playerPed, 7) - 1,
        chain_2 = GetNumberOfPedTextureVariations(playerPed, 7, Character['chain_1']) - 1,
        bags_1 = GetNumberOfPedDrawableVariations(playerPed, 5) - 1,
        bags_2 = GetNumberOfPedTextureVariations(playerPed, 5, Character['bags_1']) - 1,
        helmet_1 = GetNumberOfPedPropDrawableVariations(playerPed, 0) - 1,
        helmet_2 = GetNumberOfPedPropTextureVariations(playerPed, 0, Character['helmet_1']) - 1,
        glasses_1 = GetNumberOfPedPropDrawableVariations(playerPed, 1) - 1,
        glasses_2 = GetNumberOfPedPropTextureVariations(playerPed, 1, Character['glasses_1'] - 1),
        watches_1 = GetNumberOfPedPropDrawableVariations(playerPed, 6) - 1,
        watches_2 = GetNumberOfPedPropTextureVariations(playerPed, 6, Character['watches_1']) - 1,
        bracelets_1 = GetNumberOfPedPropDrawableVariations(playerPed, 7) - 1,
        bracelets_2 = GetNumberOfPedPropTextureVariations(playerPed, 7, Character['bracelets_1'] - 1),
        t_head_1 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_2 = 10,
        t_head_3 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_4 = 10,
        t_head_5 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_6 = 10,
        t_head_7 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_8 = 10,
        t_head_9 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_10 = 10,
        t_head_11 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_12 = 10,
        t_head_13 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_14 = 10,
        t_head_15 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_16 = 10,
        t_head_17 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_18 = 10,
        t_head_19 = #Config.Tattoos['t_head_1'][Character['sex']],
        t_head_20 = 10,

        t_hair_1 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_2 = 10,
        t_hair_3 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_4 = 10,
        t_hair_5 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_6 = 10,
        t_hair_7 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_8 = 10,
        t_hair_9 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_10 = 10,
        t_hair_11 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_12 = 10,
        t_hair_13 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_14 = 10,
        t_hair_15 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_16 = 10,
        t_hair_17 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_18 = 10,
        t_hair_19 = #Config.Tattoos['t_hair_1'][Character['sex']],
        t_hair_20 = 10,

        t_torso_1 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_2 = 10,
        t_torso_3 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_4 = 10,
        t_torso_5 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_6 = 10,
        t_torso_7 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_8 = 10,
        t_torso_9 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_10 = 10,
        t_torso_11 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_12 = 10,
        t_torso_13 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_14 = 10,
        t_torso_15 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_16 = 10,
        t_torso_17 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_18 = 10,
        t_torso_19 = #Config.Tattoos['t_torso_1'][Character['sex']],
        t_torso_20 = 10,


        t_larm_1 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_2 = 10,
        t_larm_3 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_4 = 10,
        t_larm_5 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_6 = 10,
        t_larm_7 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_8 = 10,
        t_larm_9 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_10 = 10,
        t_larm_11 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_12 = 10,
        t_larm_13 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_14 = 10,
        t_larm_15 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_16 = 10,
        t_larm_17 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_18 = 10,
        t_larm_19 = #Config.Tattoos['t_larm_1'][Character['sex']],
        t_larm_20 = 10,

        t_rarm_1 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_2 = 10,
        t_rarm_3 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_4 = 10,
        t_rarm_5 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_6 = 10,
        t_rarm_7 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_8 = 10,
        t_rarm_9 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_10 = 10,
        t_rarm_11 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_12 = 10,
        t_rarm_13 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_14 = 10,
        t_rarm_15 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_16 = 10,
        t_rarm_17 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_18 = 10,
        t_rarm_19 = #Config.Tattoos['t_rarm_1'][Character['sex']],
        t_rarm_20 = 10,

        t_lleg_1 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_2 = 10,
        t_lleg_3 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_4 = 10,
        t_lleg_5 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_6 = 10,
        t_lleg_7 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_8 = 10,
        t_lleg_9 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_10 = 10,
        t_lleg_11 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_12 = 10,
        t_lleg_13 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_14 = 10,
        t_lleg_18 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_16 = 10,
        t_lleg_17 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_18 = 10,
        t_lleg_19 = #Config.Tattoos['t_lleg_1'][Character['sex']],
        t_lleg_20 = 10,

        t_rleg_1 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_2 = 10,
        t_rleg_3 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_4 = 10,
        t_rleg_5 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_6 = 10,
        t_rleg_7 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_8 = 10,
        t_rleg_9 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_10 = 10,
        t_rleg_11 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_12 = 10,
        t_rleg_13 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_14 = 10,
        t_rleg_15 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_16 = 10,
        t_rleg_17 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_18 = 10,
        t_rleg_19 = #Config.Tattoos['t_rleg_1'][Character['sex']],
        t_rleg_20 = 10,

    }

    return data
end

function ApplySkin(skin, clothes)
    local playerPed = PlayerPedId()

    for k, v in pairs(skin) do
        Character[k] = v
    end

    if clothes ~= nil then
        for k, v in pairs(clothes) do
            if
                k ~= 'sex'and
                k ~= 'ped'and
                k ~= 'mom'and
                k ~= 'mom_2'and
                k ~= 'dad'and
                k ~= 'dad_2'and
                k ~= 'face_md_weight'and
                k ~= 'skin_md_weight'and
                k ~= 'nose_1'and
                k ~= 'nose_2'and
                k ~= 'nose_3'and
                k ~= 'nose_4'and
                k ~= 'nose_5'and
                k ~= 'nose_6'and
                k ~= 'cheeks_1'and
                k ~= 'cheeks_2'and
                k ~= 'cheeks_3'and
                k ~= 'lip_thickness'and
                k ~= 'jaw_1'and
                k ~= 'jaw_2'and
                k ~= 'chin_1'and
                k ~= 'chin_2'and
                k ~= 'chin_3'and
                k ~= 'chin_4'and
                k ~= 'neck_thickness'and
                k ~= 'age_1'and
                k ~= 'age_2'and
                k ~= 'eye_color'and
                k ~= 'eye_squint'and
                k ~= 'beard_1'and
                k ~= 'beard_2'and
                k ~= 'beard_3'and
                k ~= 'beard_4'and
                k ~= 'hair_1'and
                k ~= 'hair_2'and
                k ~= 'hair_color_1'and
                k ~= 'hair_color_2'and
                k ~= 'eyebrows_1'and
                k ~= 'eyebrows_2'and
                k ~= 'eyebrows_3'and
                k ~= 'eyebrows_4'and
                k ~= 'eyebrows_5'and
                k ~= 'eyebrows_6'and
                k ~= 'makeup_1'and
                k ~= 'makeup_2'and
                k ~= 'makeup_3'and
                k ~= 'makeup_4'and
                k ~= 'lipstick_1'and
                k ~= 'lipstick_2'and
                k ~= 'lipstick_3'and
                k ~= 'lipstick_4'and
                k ~= 'blemishes_1'and
                k ~= 'blemishes_2'and
                k ~= 'blemishes_3'and
                k ~= 'blush_1'and
                k ~= 'blush_2'and
                k ~= 'blush_3'and
                k ~= 'complexion_1'and
                k ~= 'complexion_2'and
                k ~= 'sun_1'and
                k ~= 'sun_2'and
                k ~= 'moles_1'and
                k ~= 'moles_2'and
                k ~= 'chest_1'and
                k ~= 'chest_2'and
                k ~= 'chest_3'and
                k ~= 'bodyb_1'and
                k ~= 'bodyb_2'and
                k ~= 'bodyb_3'and
                k ~= 'bodyb_4'
                then
                Character[k] = v
            end
        end
    end

    local face_weight = (Character['face_md_weight'] / 100) + 0.0
    local skin_weight = (Character['skin_md_weight'] / 100) + 0.0
    SetPedHeadBlendData(playerPed, Character['mom'], Character['dad'], nil, Character['mom_2'], Character['dad_2'], nil, face_weight, skin_weight, nil, true)

    SetPedFaceFeature(playerPed, 0, (Character['nose_1'] / 10) + 0.0)-- Nose Width
    SetPedFaceFeature(playerPed, 1, (Character['nose_2'] / 10) + 0.0)-- Nose Peak Height
    SetPedFaceFeature(playerPed, 2, (Character['nose_3'] / 10) + 0.0)-- Nose Peak Length
    SetPedFaceFeature(playerPed, 3, (Character['nose_4'] / 10) + 0.0)-- Nose Bone Height
    SetPedFaceFeature(playerPed, 4, (Character['nose_5'] / 10) + 0.0)-- Nose Peak Lowering
    SetPedFaceFeature(playerPed, 5, (Character['nose_6'] / 10) + 0.0)-- Nose Bone Twist
    SetPedFaceFeature(playerPed, 6, (Character['eyebrows_5'] / 10) + 0.0)-- Eyebrow height
    SetPedFaceFeature(playerPed, 7, (Character['eyebrows_6'] / 10) + 0.0)-- Eyebrow depth
    SetPedFaceFeature(playerPed, 8, (Character['cheeks_1'] / 10) + 0.0)-- Cheekbones Height
    SetPedFaceFeature(playerPed, 9, (Character['cheeks_2'] / 10) + 0.0)-- Cheekbones Width
    SetPedFaceFeature(playerPed, 10, (Character['cheeks_3'] / 10) + 0.0)-- Cheeks Width
    SetPedFaceFeature(playerPed, 11, (Character['eye_squint'] / 10) + 0.0)-- Eyes squint
    SetPedFaceFeature(playerPed, 12, (Character['lip_thickness'] / 10) + 0.0)-- Lip Fullness
    SetPedFaceFeature(playerPed, 13, (Character['jaw_1'] / 10) + 0.0)-- Jaw Bone Width
    SetPedFaceFeature(playerPed, 14, (Character['jaw_2'] / 10) + 0.0)-- Jaw Bone Length
    SetPedFaceFeature(playerPed, 15, (Character['chin_1'] / 10) + 0.0)-- Chin Height
    SetPedFaceFeature(playerPed, 16, (Character['chin_2'] / 10) + 0.0)-- Chin Length
    SetPedFaceFeature(playerPed, 17, (Character['chin_3'] / 10) + 0.0)-- Chin Width
    SetPedFaceFeature(playerPed, 18, (Character['chin_4'] / 10) + 0.0)-- Chin Hole Size
    SetPedFaceFeature(playerPed, 19, (Character['neck_thickness'] / 10) + 0.0)-- Neck Thickness

    SetPedHairColor(playerPed, Character['hair_color_1'], Character['hair_color_2'])-- Hair Color
    SetPedHeadOverlay(playerPed, 3, Character['age_1'], (Character['age_2'] / 10) + 0.0)-- Age + opacity
    SetPedHeadOverlay(playerPed, 0, Character['blemishes_1'], (Character['blemishes_2'] / 10) + 0.0)-- Blemishes + opacity
    SetPedHeadOverlay(playerPed, 1, Character['beard_1'], (Character['beard_2'] / 10) + 0.0)-- Beard + opacity
    SetPedEyeColor(playerPed, Character['eye_color'], 0, 1)-- Eyes color
    SetPedHeadOverlay(playerPed, 2, Character['eyebrows_1'], (Character['eyebrows_2'] / 10) + 0.0)-- Eyebrows + opacity
    SetPedHeadOverlay(playerPed, 4, Character['makeup_1'], (Character['makeup_2'] / 10) + 0.0)-- Makeup + opacity
    SetPedHeadOverlay(playerPed, 8, Character['lipstick_1'], (Character['lipstick_2'] / 10) + 0.0)-- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2, Character['hair_1'], Character['hair_2'], 2)-- Hair
    SetPedHeadOverlayColor(playerPed, 1, 1, Character['beard_3'], Character['beard_4'])-- Beard Color
    SetPedHeadOverlayColor(playerPed, 2, 1, Character['eyebrows_3'], Character['eyebrows_4'])-- Eyebrows Color
    SetPedHeadOverlayColor(playerPed, 4, 2, Character['makeup_3'], Character['makeup_4'])-- Makeup Color
    SetPedHeadOverlayColor(playerPed, 8, 2, Character['lipstick_3'], Character['lipstick_4'])-- Lipstick Color
    SetPedHeadOverlay(playerPed, 5, Character['blush_1'], (Character['blush_2'] / 10) + 0.0)-- Blush + opacity
    SetPedHeadOverlayColor(playerPed, 5, 2, Character['blush_3'])-- Blush Color
    SetPedHeadOverlay(playerPed, 6, Character['complexion_1'], (Character['complexion_2'] / 10) + 0.0)-- Complexion + opacity
    SetPedHeadOverlay(playerPed, 7, Character['sun_1'], (Character['sun_2'] / 10) + 0.0)-- Sun Damage + opacity
    SetPedHeadOverlay(playerPed, 9, Character['moles_1'], (Character['moles_2'] / 10) + 0.0)-- Moles/Freckles + opacity
    SetPedHeadOverlay(playerPed, 10, Character['chest_1'], (Character['chest_2'] / 10) + 0.0)-- Chest Hair + opacity
    SetPedHeadOverlayColor(playerPed, 10, 1, Character['chest_3'])-- Torso Color

    if Character['bodyb_1'] == -1 then
        SetPedHeadOverlay(playerPed, 11, 255, (Character['bodyb_2'] / 10) + 0.0)-- Body Blemishes + opacity
    else
        SetPedHeadOverlay(playerPed, 11, Character['bodyb_1'], (Character['bodyb_2'] / 10) + 0.0)
    end

    if Character['bodyb_3'] == -1 then
        SetPedHeadOverlay(playerPed, 12, 255, (Character['bodyb_4'] / 10) + 0.0)
    else
        SetPedHeadOverlay(playerPed, 12, Character['bodyb_3'], (Character['bodyb_4'] / 10) + 0.0)-- Blemishes 'added body effect' + opacity
    end

    if Character['ears_1'] == -1 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, Character['ears_1'], Character['ears_2'], 2)-- Ears Accessories
    end

    SetPedComponentVariation(playerPed, 8, Character['tshirt_1'], Character['tshirt_2'], 2)-- Tshirt
    SetPedComponentVariation(playerPed, 11, Character['torso_1'], Character['torso_2'], 2)-- torso parts
    SetPedComponentVariation(playerPed, 3, Character['arms'], Character['arms_2'], 2)-- Amrs
    SetPedComponentVariation(playerPed, 10, Character['decals_1'], Character['decals_2'], 2)-- decals
    SetPedComponentVariation(playerPed, 4, Character['pants_1'], Character['pants_2'], 2)-- pants
    SetPedComponentVariation(playerPed, 6, Character['shoes_1'], Character['shoes_2'], 2)-- shoes
    SetPedComponentVariation(playerPed, 1, Character['mask_1'], Character['mask_2'], 2)-- mask
    SetPedComponentVariation(playerPed, 9, Character['bproof_1'], Character['bproof_2'], 2)-- bulletproof
    SetPedComponentVariation(playerPed, 7, Character['chain_1'], Character['chain_2'], 2)-- chain
    SetPedComponentVariation(playerPed, 5, Character['bags_1'], Character['bags_2'], 2)-- Bag

    if Character['helmet_1'] == -1 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, Character['helmet_1'], Character['helmet_2'], 2)-- Helmet
    end

    if Character['glasses_1'] == -1 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, Character['glasses_1'], Character['glasses_2'], 2)-- Glasses
    end

    if Character['watches_1'] == -1 then
        ClearPedProp(playerPed, 6)
    else
        SetPedPropIndex(playerPed, 6, Character['watches_1'], Character['watches_2'], 2)-- Watches
    end

    if Character['bracelets_1'] == -1 then
        ClearPedProp(playerPed, 7)
    else
        SetPedPropIndex(playerPed, 7, Character['bracelets_1'], Character['bracelets_2'], 2)-- Bracelets
    end

    if Config.UseTattoos then
        ClearPedDecorations(PlayerPedId())
        if Character['t_hair_1'] ~= 0 then
            for i = 1, Character['t_hair_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_1']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_1']].Hash))
            end
        end
        if Character['t_hair_3'] ~= 0 then
            for i = 1, Character['t_hair_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_3']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_3']].Hash))
            end
        end
        if Character['t_hair_5'] ~= 0 then
            for i = 1, Character['t_hair_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_5']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_5']].Hash))
            end
        end
        if Character['t_hair_7'] ~= 0 then
            for i = 1, Character['t_hair_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_7']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_7']].Hash))
            end
        end
        if Character['t_hair_9'] ~= 0 then
            for i = 1, Character['t_hair_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_9']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_9']].Hash))
            end
        end
        if Character['t_hair_11'] ~= 0 then
            for i = 1, Character['t_hair_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_11']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_11']].Hash))
            end
        end
        if Character['t_hair_13'] ~= 0 then
            for i = 1, Character['t_hair_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_13']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_13']].Hash))
            end
        end
        if Character['t_hair_15'] ~= 0 then
            for i = 1, Character['t_hair_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_15']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_15']].Hash))
            end
        end
        if Character['t_hair_17'] ~= 0 then
            for i = 1, Character['t_hair_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_17']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_17']].Hash))
            end
        end
        if Character['t_hair_19'] ~= 0 then
            for i = 1, Character['t_hair_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_19']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_19']].Hash))
            end
        end

        if Character['t_head_1'] ~= 0 then
            for i = 1, Character['t_head_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_1']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_1']].Hash))
            end
        end
        if Character['t_head_3'] ~= 0 then
            for i = 1, Character['t_head_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_3']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_3']].Hash))
            end
        end
        if Character['t_head_5'] ~= 0 then
            for i = 1, Character['t_head_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_5']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_5']].Hash))
            end
        end
        if Character['t_head_7'] ~= 0 then
            for i = 1, Character['t_head_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_7']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_7']].Hash))
            end
        end
        if Character['t_head_9'] ~= 0 then
            for i = 1, Character['t_head_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_9']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_9']].Hash))
            end
        end
        if Character['t_head_11'] ~= 0 then
            for i = 1, Character['t_head_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_11']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_11']].Hash))
            end
        end
        if Character['t_head_13'] ~= 0 then
            for i = 1, Character['t_head_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_13']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_13']].Hash))
            end
        end
        if Character['t_head_15'] ~= 0 then
            for i = 1, Character['t_head_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_15']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_15']].Hash))
            end
        end
        if Character['t_head_17'] ~= 0 then
            for i = 1, Character['t_head_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_17']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_17']].Hash))
            end
        end
        if Character['t_head_19'] ~= 0 then
            for i = 1, Character['t_head_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_19']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_19']].Hash))
            end
        end

        if Character['t_torso_1'] ~= 0 then
            for i = 1, Character['t_torso_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_1']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_1']].Hash))
            end
        end
        if Character['t_torso_3'] ~= 0 then
            for i = 1, Character['t_torso_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_3']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_3']].Hash))
            end
        end
        if Character['t_torso_5'] ~= 0 then
            for i = 1, Character['t_torso_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_5']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_5']].Hash))
            end
        end
        if Character['t_torso_7'] ~= 0 then
            for i = 1, Character['t_torso_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_7']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_7']].Hash))
            end
        end
        if Character['t_torso_9'] ~= 0 then
            for i = 1, Character['t_torso_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_9']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_9']].Hash))
            end
        end
        if Character['t_torso_11'] ~= 0 then
            for i = 1, Character['t_torso_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_11']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_11']].Hash))
            end
        end
        if Character['t_torso_13'] ~= 0 then
            for i = 1, Character['t_torso_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_13']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_13']].Hash))
            end
        end
        if Character['t_torso_15'] ~= 0 then
            for i = 1, Character['t_torso_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_15']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_15']].Hash))
            end
        end
        if Character['t_torso_17'] ~= 0 then
            for i = 1, Character['t_torso_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_17']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_17']].Hash))
            end
        end
        if Character['t_torso_19'] ~= 0 then
            for i = 1, Character['t_torso_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_19']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_19']].Hash))
            end
        end

        if Character['t_larm_1'] ~= 0 then
            for i = 1, Character['t_larm_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_1']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_1']].Hash))
            end
        end
        if Character['t_larm_3'] ~= 0 then
            for i = 1, Character['t_larm_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_3']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_3']].Hash))
            end
        end
        if Character['t_larm_5'] ~= 0 then
            for i = 1, Character['t_larm_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_5']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_5']].Hash))
            end
        end
        if Character['t_larm_7'] ~= 0 then
            for i = 1, Character['t_larm_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_7']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_7']].Hash))
            end
        end
        if Character['t_larm_9'] ~= 0 then
            for i = 1, Character['t_larm_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_9']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_9']].Hash))
            end
        end
        if Character['t_larm_11'] ~= 0 then
            for i = 1, Character['t_larm_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_11']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_11']].Hash))
            end
        end
        if Character['t_larm_13'] ~= 0 then
            for i = 1, Character['t_larm_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_13']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_13']].Hash))
            end
        end
        if Character['t_larm_15'] ~= 0 then
            for i = 1, Character['t_larm_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_15']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_15']].Hash))
            end
        end
        if Character['t_larm_17'] ~= 0 then
            for i = 1, Character['t_larm_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_17']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_17']].Hash))
            end
        end
        if Character['t_larm_19'] ~= 0 then
            for i = 1, Character['t_larm_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_19']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_19']].Hash))
            end
        end

        if Character['t_rarm_1'] ~= 0 then
            for i = 1, Character['t_rarm_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_1']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_1']].Hash))
            end
        end
        if Character['t_rarm_3'] ~= 0 then
            for i = 1, Character['t_rarm_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_3']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_3']].Hash))
            end
        end
        if Character['t_rarm_5'] ~= 0 then
            for i = 1, Character['t_rarm_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_5']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_5']].Hash))
            end
        end
        if Character['t_rarm_7'] ~= 0 then
            for i = 1, Character['t_rarm_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_7']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_7']].Hash))
            end
        end
        if Character['t_rarm_9'] ~= 0 then
            for i = 1, Character['t_rarm_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_9']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_9']].Hash))
            end
        end
        if Character['t_rarm_11'] ~= 0 then
            for i = 1, Character['t_rarm_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_11']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_11']].Hash))
            end
        end
        if Character['t_rarm_13'] ~= 0 then
            for i = 1, Character['t_rarm_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_13']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_13']].Hash))
            end
        end
        if Character['t_rarm_15'] ~= 0 then
            for i = 1, Character['t_rarm_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_15']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_15']].Hash))
            end
        end
        if Character['t_rarm_17'] ~= 0 then
            for i = 1, Character['t_rarm_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_17']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_17']].Hash))
            end
        end
        if Character['t_rarm_19'] ~= 0 then
            for i = 1, Character['t_rarm_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_19']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_19']].Hash))
            end
        end

        if Character['t_lleg_1'] ~= 0 then
            for i = 1, Character['t_lleg_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_1']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_1']].Hash))
            end
        end
        if Character['t_lleg_3'] ~= 0 then
            for i = 1, Character['t_lleg_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_3']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_3']].Hash))
            end
        end
        if Character['t_lleg_5'] ~= 0 then
            for i = 1, Character['t_lleg_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_5']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_5']].Hash))
            end
        end
        if Character['t_lleg_7'] ~= 0 then
            for i = 1, Character['t_lleg_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_7']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_7']].Hash))
            end
        end
        if Character['t_lleg_9'] ~= 0 then
            for i = 1, Character['t_lleg_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_9']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_9']].Hash))
            end
        end
        if Character['t_lleg_11'] ~= 0 then
            for i = 1, Character['t_lleg_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_11']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_11']].Hash))
            end
        end
        if Character['t_lleg_13'] ~= 0 then
            for i = 1, Character['t_lleg_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_13']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_13']].Hash))
            end
        end
        if Character['t_lleg_15'] ~= 0 then
            for i = 1, Character['t_lleg_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_15']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_15']].Hash))
            end
        end
        if Character['t_lleg_17'] ~= 0 then
            for i = 1, Character['t_lleg_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_17']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_17']].Hash))
            end
        end
        if Character['t_lleg_19'] ~= 0 then
            for i = 1, Character['t_lleg_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_19']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_19']].Hash))
            end
        end

        if Character['t_rleg_1'] ~= 0 then
            for i = 1, Character['t_rleg_2'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_1']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_1']].Hash))
            end
        end
        if Character['t_rleg_3'] ~= 0 then
            for i = 1, Character['t_rleg_4'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_3']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_3']].Hash))
            end
        end
        if Character['t_rleg_5'] ~= 0 then
            for i = 1, Character['t_rleg_6'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_5']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_5']].Hash))
            end
        end
        if Character['t_rleg_7'] ~= 0 then
            for i = 1, Character['t_rleg_8'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_7']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_7']].Hash))
            end
        end
        if Character['t_rleg_9'] ~= 0 then
            for i = 1, Character['t_rleg_10'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_9']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_9']].Hash))
            end
        end
        if Character['t_rleg_11'] ~= 0 then
            for i = 1, Character['t_rleg_12'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_11']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_11']].Hash))
            end
        end
        if Character['t_rleg_13'] ~= 0 then
            for i = 1, Character['t_rleg_14'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_13']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_13']].Hash))
            end
        end
        if Character['t_rleg_15'] ~= 0 then
            for i = 1, Character['t_rleg_16'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_15']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_15']].Hash))
            end
        end
        if Character['t_rleg_17'] ~= 0 then
            for i = 1, Character['t_rleg_18'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_17']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_17']].Hash))
            end
        end
        if Character['t_rleg_19'] ~= 0 then
            for i = 1, Character['t_rleg_20'] do
                SetPedDecoration(PlayerPedId(), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_19']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_19']].Hash))
            end
        end
    end
end

AddEventHandler('skinchanger:loadDefaultModel', function(loadMale, cb, ped)
    LoadDefaultModel(loadMale, cb, ped or 1)
end)

AddEventHandler('skinchanger:getData', function(cb)
    local components = json.decode(json.encode(Components))
    for k, v in pairs(Character) do
        for i = 1, #components, 1 do
            if k == components[i].name then
                components[i].value = v
            end
        end
    end
    cb(components, GetMaxVals())
end)

RegisterNetEvent('skinchanger:change')
AddEventHandler('skinchanger:change', function(key, val)
    Character[key] = val
    if key == 'sex' or key == 'ped' then
        TriggerEvent('skinchanger:loadSkin', Character)
    else
        ApplySkin(Character)
    end
end)

AddEventHandler('skinchanger:getSkin', function(cb)
    while LastSex == -1 do Citizen.Wait(1000) end
    cb(Character)
end)

AddEventHandler('skinchanger:modelLoaded', function()
    ClearPedProp(PlayerPedId(), 0)
    if LoadSkin ~= nil then
        ApplySkin(LoadSkin)
        LoadSkin = nil
    end
    if LoadClothes ~= nil then
        ApplySkin(LoadClothes.playerSkin, LoadClothes.clothesSkin)
        LoadClothes = nil
    end
end)

RegisterNetEvent('skinchanger:loadSkin')
AddEventHandler('skinchanger:loadSkin', function(skin, cb)
    if skin['sex'] ~= LastSex or skin['ped'] ~= LastPed or GetHashKey(Config.Models[skin.sex][skin.ped]) ~= GetEntityModel(PlayerPedId()) then
        LoadSkin = skin
        if skin['sex'] == 0 then
            TriggerEvent('skinchanger:loadDefaultModel', true, cb, skin['ped'] or 1)
        else
            TriggerEvent('skinchanger:loadDefaultModel', false, cb, skin['ped'] or 1)
        end
    else
        ApplySkin(skin)
        if cb ~= nil then
            cb()
        end
    end
    LastSex = skin['sex']
    LastPed = skin['ped'] or Character['ped']
end)

RegisterNetEvent('skinchanger:loadClothes')
AddEventHandler('skinchanger:loadClothes', function(playerSkin, clothesSkin)
    if playerSkin['sex'] ~= LastSex or playerSkin['ped'] ~= LastPed or GetHashKey(Config.Models[playerSkin.sex][playerSkin.ped]) ~= GetEntityModel(PlayerPedId()) then
        LoadClothes = {
            playerSkin = playerSkin,
            clothesSkin = clothesSkin
        }
        if playerSkin['sex'] == 0 then
            TriggerEvent('skinchanger:loadDefaultModel', true, nil, playerSkin['ped'] or 1)
        else
            TriggerEvent('skinchanger:loadDefaultModel', false, nil, playerSkin['ped'] or 1)
        end
    else
        ApplySkin(playerSkin, clothesSkin)
    end
    LastSex = playerSkin['sex']
    LastPed = playerSkin['ped'] or Character['ped']
end)

function getModelById(skin)
    return GetHashKey(Config.Models[skin.sex][skin.ped])
end
exports('getModelById', getModelById)

function getModelIdByModel(sex, model)
    for i = 1, #Config.Models[sex], 1 do
        if GetHashKey(Config.Models[sex][i]) == model then
            return i
        end
    end
    return 1
end
exports('getModelIdByModel', getModelIdByModel)

RegisterNetEvent('skinchanger:loadSkinPed')
AddEventHandler('skinchanger:loadSkinPed', function(skin, ped)
    local Character = {}
    local playerPed = ped

    for k, v in pairs(skin) do
        Character[k] = v
    end

    local face_weight = (Character['face_md_weight'] / 100) + 0.0
    local skin_weight = (Character['skin_md_weight'] / 100) + 0.0
    SetPedHeadBlendData(playerPed, Character['mom'], Character['dad'], nil, Character['mom_2'], Character['dad_2'], nil, face_weight, skin_weight, nil, true)

    SetPedFaceFeature(playerPed, 0, (Character['nose_1'] / 10) + 0.0)-- Nose Width
    SetPedFaceFeature(playerPed, 1, (Character['nose_2'] / 10) + 0.0)-- Nose Peak Height
    SetPedFaceFeature(playerPed, 2, (Character['nose_3'] / 10) + 0.0)-- Nose Peak Length
    SetPedFaceFeature(playerPed, 3, (Character['nose_4'] / 10) + 0.0)-- Nose Bone Height
    SetPedFaceFeature(playerPed, 4, (Character['nose_5'] / 10) + 0.0)-- Nose Peak Lowering
    SetPedFaceFeature(playerPed, 5, (Character['nose_6'] / 10) + 0.0)-- Nose Bone Twist
    SetPedFaceFeature(playerPed, 6, (Character['eyebrows_5'] / 10) + 0.0)-- Eyebrow height
    SetPedFaceFeature(playerPed, 7, (Character['eyebrows_6'] / 10) + 0.0)-- Eyebrow depth
    SetPedFaceFeature(playerPed, 8, (Character['cheeks_1'] / 10) + 0.0)-- Cheekbones Height
    SetPedFaceFeature(playerPed, 9, (Character['cheeks_2'] / 10) + 0.0)-- Cheekbones Width
    SetPedFaceFeature(playerPed, 10, (Character['cheeks_3'] / 10) + 0.0)-- Cheeks Width
    SetPedFaceFeature(playerPed, 11, (Character['eye_squint'] / 10) + 0.0)-- Eyes squint
    SetPedFaceFeature(playerPed, 12, (Character['lip_thickness'] / 10) + 0.0)-- Lip Fullness
    SetPedFaceFeature(playerPed, 13, (Character['jaw_1'] / 10) + 0.0)-- Jaw Bone Width
    SetPedFaceFeature(playerPed, 14, (Character['jaw_2'] / 10) + 0.0)-- Jaw Bone Length
    SetPedFaceFeature(playerPed, 15, (Character['chin_1'] / 10) + 0.0)-- Chin Height
    SetPedFaceFeature(playerPed, 16, (Character['chin_2'] / 10) + 0.0)-- Chin Length
    SetPedFaceFeature(playerPed, 17, (Character['chin_3'] / 10) + 0.0)-- Chin Width
    SetPedFaceFeature(playerPed, 18, (Character['chin_4'] / 10) + 0.0)-- Chin Hole Size
    SetPedFaceFeature(playerPed, 19, (Character['neck_thickness'] / 10) + 0.0)-- Neck Thickness

    SetPedHairColor(playerPed, Character['hair_color_1'], Character['hair_color_2'])-- Hair Color
    SetPedHeadOverlay(playerPed, 3, Character['age_1'], (Character['age_2'] / 10) + 0.0)-- Age + opacity
    SetPedHeadOverlay(playerPed, 0, Character['blemishes_1'], (Character['blemishes_2'] / 10) + 0.0)-- Blemishes + opacity
    SetPedHeadOverlay(playerPed, 1, Character['beard_1'], (Character['beard_2'] / 10) + 0.0)-- Beard + opacity
    SetPedEyeColor(playerPed, Character['eye_color'], 0, 1)-- Eyes color
    SetPedHeadOverlay(playerPed, 2, Character['eyebrows_1'], (Character['eyebrows_2'] / 10) + 0.0)-- Eyebrows + opacity
    SetPedHeadOverlay(playerPed, 4, Character['makeup_1'], (Character['makeup_2'] / 10) + 0.0)-- Makeup + opacity
    SetPedHeadOverlay(playerPed, 8, Character['lipstick_1'], (Character['lipstick_2'] / 10) + 0.0)-- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2, Character['hair_1'], Character['hair_2'], 2)-- Hair
    SetPedHeadOverlayColor(playerPed, 1, 1, Character['beard_3'], Character['beard_4'])-- Beard Color
    SetPedHeadOverlayColor(playerPed, 2, 1, Character['eyebrows_3'], Character['eyebrows_4'])-- Eyebrows Color
    SetPedHeadOverlayColor(playerPed, 4, 2, Character['makeup_3'], Character['makeup_4'])-- Makeup Color
    SetPedHeadOverlayColor(playerPed, 8, 1, Character['lipstick_3'], Character['lipstick_4'])-- Lipstick Color
    SetPedHeadOverlay(playerPed, 5, Character['blush_1'], (Character['blush_2'] / 10) + 0.0)-- Blush + opacity
    SetPedHeadOverlayColor(playerPed, 5, 2, Character['blush_3'])-- Blush Color
    SetPedHeadOverlay(playerPed, 6, Character['complexion_1'], (Character['complexion_2'] / 10) + 0.0)-- Complexion + opacity
    SetPedHeadOverlay(playerPed, 7, Character['sun_1'], (Character['sun_2'] / 10) + 0.0)-- Sun Damage + opacity
    SetPedHeadOverlay(playerPed, 9, Character['moles_1'], (Character['moles_2'] / 10) + 0.0)-- Moles/Freckles + opacity
    SetPedHeadOverlay(playerPed, 10, Character['chest_1'], (Character['chest_2'] / 10) + 0.0)-- Chest Hair + opacity
    SetPedHeadOverlayColor(playerPed, 10, 1, Character['chest_3'])-- Torso Color

    if Character['bodyb_1'] == -1 then
        SetPedHeadOverlay(playerPed, 11, 255, (Character['bodyb_2'] / 10) + 0.0)-- Body Blemishes + opacity
    else
        SetPedHeadOverlay(playerPed, 11, Character['bodyb_1'], (Character['bodyb_2'] / 10) + 0.0)
    end

    if Character['bodyb_3'] == -1 then
        SetPedHeadOverlay(playerPed, 12, 255, (Character['bodyb_4'] / 10) + 0.0)
    else
        SetPedHeadOverlay(playerPed, 12, Character['bodyb_3'], (Character['bodyb_4'] / 10) + 0.0)-- Blemishes 'added body effect' + opacity
    end

    if Character['ears_1'] == -1 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, Character['ears_1'], Character['ears_2'], 2)-- Ears Accessories
    end

    SetPedComponentVariation(playerPed, 8, Character['tshirt_1'], Character['tshirt_2'], 2)-- Tshirt
    SetPedComponentVariation(playerPed, 11, Character['torso_1'], Character['torso_2'], 2)-- torso parts
    SetPedComponentVariation(playerPed, 3, Character['arms'], Character['arms_2'], 2)-- Amrs
    SetPedComponentVariation(playerPed, 10, Character['decals_1'], Character['decals_2'], 2)-- decals
    SetPedComponentVariation(playerPed, 4, Character['pants_1'], Character['pants_2'], 2)-- pants
    SetPedComponentVariation(playerPed, 6, Character['shoes_1'], Character['shoes_2'], 2)-- shoes
    SetPedComponentVariation(playerPed, 1, Character['mask_1'], Character['mask_2'], 2)-- mask
    SetPedComponentVariation(playerPed, 9, Character['bproof_1'], Character['bproof_2'], 2)-- bulletproof
    SetPedComponentVariation(playerPed, 7, Character['chain_1'], Character['chain_2'], 2)-- chain
    SetPedComponentVariation(playerPed, 5, Character['bags_1'], Character['bags_2'], 2)-- Bag

    if Character['helmet_1'] == -1 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, Character['helmet_1'], Character['helmet_2'], 2)-- Helmet
    end

    if Character['glasses_1'] == -1 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, Character['glasses_1'], Character['glasses_2'], 2)-- Glasses
    end

    if Character['watches_1'] == -1 then
        ClearPedProp(playerPed, 6)
    else
        SetPedPropIndex(playerPed, 6, Character['watches_1'], Character['watches_2'], 2)-- Watches
    end

    if Character['bracelets_1'] == -1 then
        ClearPedProp(playerPed, 7)
    else
        SetPedPropIndex(playerPed, 7, Character['bracelets_1'], Character['bracelets_2'], 2)-- Bracelets
    end

    if Config.UseTattoos then
        ClearPedDecorations(playerPed)
        if Character['t_hair_1'] ~= 0 then
            for i = 1, Character['t_hair_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_1']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_1']].Hash))
            end
        end
        if Character['t_hair_3'] ~= 0 then
            for i = 1, Character['t_hair_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_3']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_3']].Hash))
            end
        end
        if Character['t_hair_5'] ~= 0 then
            for i = 1, Character['t_hair_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_5']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_5']].Hash))
            end
        end
        if Character['t_hair_7'] ~= 0 then
            for i = 1, Character['t_hair_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_7']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_7']].Hash))
            end
        end
        if Character['t_hair_9'] ~= 0 then
            for i = 1, Character['t_hair_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_9']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_9']].Hash))
            end
        end
        if Character['t_hair_11'] ~= 0 then
            for i = 1, Character['t_hair_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_11']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_11']].Hash))
            end
        end
        if Character['t_hair_13'] ~= 0 then
            for i = 1, Character['t_hair_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_13']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_13']].Hash))
            end
        end
        if Character['t_hair_15'] ~= 0 then
            for i = 1, Character['t_hair_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_15']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_15']].Hash))
            end
        end
        if Character['t_hair_17'] ~= 0 then
            for i = 1, Character['t_hair_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_17']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_17']].Hash))
            end
        end
        if Character['t_hair_19'] ~= 0 then
            for i = 1, Character['t_hair_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_19']].Collection), GetHashKey(Config.Tattoos['t_hair_1'][Character['sex']][Character['t_hair_19']].Hash))
            end
        end

        if Character['t_head_1'] ~= 0 then
            for i = 1, Character['t_head_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_1']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_1']].Hash))
            end
        end
        if Character['t_head_3'] ~= 0 then
            for i = 1, Character['t_head_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_3']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_3']].Hash))
            end
        end
        if Character['t_head_5'] ~= 0 then
            for i = 1, Character['t_head_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_5']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_5']].Hash))
            end
        end
        if Character['t_head_7'] ~= 0 then
            for i = 1, Character['t_head_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_7']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_7']].Hash))
            end
        end
        if Character['t_head_9'] ~= 0 then
            for i = 1, Character['t_head_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_9']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_9']].Hash))
            end
        end
        if Character['t_head_11'] ~= 0 then
            for i = 1, Character['t_head_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_11']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_11']].Hash))
            end
        end
        if Character['t_head_13'] ~= 0 then
            for i = 1, Character['t_head_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_13']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_13']].Hash))
            end
        end
        if Character['t_head_15'] ~= 0 then
            for i = 1, Character['t_head_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_15']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_15']].Hash))
            end
        end
        if Character['t_head_17'] ~= 0 then
            for i = 1, Character['t_head_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_17']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_17']].Hash))
            end
        end
        if Character['t_head_19'] ~= 0 then
            for i = 1, Character['t_head_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_19']].Collection), GetHashKey(Config.Tattoos['t_head_1'][Character['sex']][Character['t_head_19']].Hash))
            end
        end

        if Character['t_torso_1'] ~= 0 then
            for i = 1, Character['t_torso_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_1']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_1']].Hash))
            end
        end
        if Character['t_torso_3'] ~= 0 then
            for i = 1, Character['t_torso_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_3']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_3']].Hash))
            end
        end
        if Character['t_torso_5'] ~= 0 then
            for i = 1, Character['t_torso_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_5']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_5']].Hash))
            end
        end
        if Character['t_torso_7'] ~= 0 then
            for i = 1, Character['t_torso_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_7']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_7']].Hash))
            end
        end
        if Character['t_torso_9'] ~= 0 then
            for i = 1, Character['t_torso_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_9']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_9']].Hash))
            end
        end
        if Character['t_torso_11'] ~= 0 then
            for i = 1, Character['t_torso_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_11']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_11']].Hash))
            end
        end
        if Character['t_torso_13'] ~= 0 then
            for i = 1, Character['t_torso_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_13']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_13']].Hash))
            end
        end
        if Character['t_torso_15'] ~= 0 then
            for i = 1, Character['t_torso_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_15']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_15']].Hash))
            end
        end
        if Character['t_torso_17'] ~= 0 then
            for i = 1, Character['t_torso_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_17']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_17']].Hash))
            end
        end
        if Character['t_torso_19'] ~= 0 then
            for i = 1, Character['t_torso_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_19']].Collection), GetHashKey(Config.Tattoos['t_torso_1'][Character['sex']][Character['t_torso_19']].Hash))
            end
        end

        if Character['t_larm_1'] ~= 0 then
            for i = 1, Character['t_larm_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_1']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_1']].Hash))
            end
        end
        if Character['t_larm_3'] ~= 0 then
            for i = 1, Character['t_larm_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_3']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_3']].Hash))
            end
        end
        if Character['t_larm_5'] ~= 0 then
            for i = 1, Character['t_larm_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_5']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_5']].Hash))
            end
        end
        if Character['t_larm_7'] ~= 0 then
            for i = 1, Character['t_larm_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_7']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_7']].Hash))
            end
        end
        if Character['t_larm_9'] ~= 0 then
            for i = 1, Character['t_larm_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_9']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_9']].Hash))
            end
        end
        if Character['t_larm_11'] ~= 0 then
            for i = 1, Character['t_larm_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_11']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_11']].Hash))
            end
        end
        if Character['t_larm_13'] ~= 0 then
            for i = 1, Character['t_larm_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_13']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_13']].Hash))
            end
        end
        if Character['t_larm_15'] ~= 0 then
            for i = 1, Character['t_larm_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_15']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_15']].Hash))
            end
        end
        if Character['t_larm_17'] ~= 0 then
            for i = 1, Character['t_larm_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_17']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_17']].Hash))
            end
        end
        if Character['t_larm_19'] ~= 0 then
            for i = 1, Character['t_larm_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_19']].Collection), GetHashKey(Config.Tattoos['t_larm_1'][Character['sex']][Character['t_larm_19']].Hash))
            end
        end

        if Character['t_rarm_1'] ~= 0 then
            for i = 1, Character['t_rarm_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_1']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_1']].Hash))
            end
        end
        if Character['t_rarm_3'] ~= 0 then
            for i = 1, Character['t_rarm_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_3']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_3']].Hash))
            end
        end
        if Character['t_rarm_5'] ~= 0 then
            for i = 1, Character['t_rarm_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_5']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_5']].Hash))
            end
        end
        if Character['t_rarm_7'] ~= 0 then
            for i = 1, Character['t_rarm_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_7']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_7']].Hash))
            end
        end
        if Character['t_rarm_9'] ~= 0 then
            for i = 1, Character['t_rarm_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_9']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_9']].Hash))
            end
        end
        if Character['t_rarm_11'] ~= 0 then
            for i = 1, Character['t_rarm_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_11']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_11']].Hash))
            end
        end
        if Character['t_rarm_13'] ~= 0 then
            for i = 1, Character['t_rarm_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_13']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_13']].Hash))
            end
        end
        if Character['t_rarm_15'] ~= 0 then
            for i = 1, Character['t_rarm_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_15']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_15']].Hash))
            end
        end
        if Character['t_rarm_17'] ~= 0 then
            for i = 1, Character['t_rarm_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_17']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_17']].Hash))
            end
        end
        if Character['t_rarm_19'] ~= 0 then
            for i = 1, Character['t_rarm_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_19']].Collection), GetHashKey(Config.Tattoos['t_rarm_1'][Character['sex']][Character['t_rarm_19']].Hash))
            end
        end

        if Character['t_lleg_1'] ~= 0 then
            for i = 1, Character['t_lleg_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_1']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_1']].Hash))
            end
        end
        if Character['t_lleg_3'] ~= 0 then
            for i = 1, Character['t_lleg_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_3']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_3']].Hash))
            end
        end
        if Character['t_lleg_5'] ~= 0 then
            for i = 1, Character['t_lleg_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_5']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_5']].Hash))
            end
        end
        if Character['t_lleg_7'] ~= 0 then
            for i = 1, Character['t_lleg_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_7']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_7']].Hash))
            end
        end
        if Character['t_lleg_9'] ~= 0 then
            for i = 1, Character['t_lleg_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_9']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_9']].Hash))
            end
        end
        if Character['t_lleg_11'] ~= 0 then
            for i = 1, Character['t_lleg_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_11']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_11']].Hash))
            end
        end
        if Character['t_lleg_13'] ~= 0 then
            for i = 1, Character['t_lleg_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_13']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_13']].Hash))
            end
        end
        if Character['t_lleg_15'] ~= 0 then
            for i = 1, Character['t_lleg_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_15']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_15']].Hash))
            end
        end
        if Character['t_lleg_17'] ~= 0 then
            for i = 1, Character['t_lleg_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_17']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_17']].Hash))
            end
        end
        if Character['t_lleg_19'] ~= 0 then
            for i = 1, Character['t_lleg_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_19']].Collection), GetHashKey(Config.Tattoos['t_lleg_1'][Character['sex']][Character['t_lleg_19']].Hash))
            end
        end

        if Character['t_rleg_1'] ~= 0 then
            for i = 1, Character['t_rleg_2'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_1']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_1']].Hash))
            end
        end
        if Character['t_rleg_3'] ~= 0 then
            for i = 1, Character['t_rleg_4'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_3']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_3']].Hash))
            end
        end
        if Character['t_rleg_5'] ~= 0 then
            for i = 1, Character['t_rleg_6'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_5']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_5']].Hash))
            end
        end
        if Character['t_rleg_7'] ~= 0 then
            for i = 1, Character['t_rleg_8'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_7']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_7']].Hash))
            end
        end
        if Character['t_rleg_9'] ~= 0 then
            for i = 1, Character['t_rleg_10'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_9']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_9']].Hash))
            end
        end
        if Character['t_rleg_11'] ~= 0 then
            for i = 1, Character['t_rleg_12'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_11']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_11']].Hash))
            end
        end
        if Character['t_rleg_13'] ~= 0 then
            for i = 1, Character['t_rleg_14'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_13']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_13']].Hash))
            end
        end
        if Character['t_rleg_15'] ~= 0 then
            for i = 1, Character['t_rleg_16'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_15']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_15']].Hash))
            end
        end
        if Character['t_rleg_17'] ~= 0 then
            for i = 1, Character['t_rleg_18'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_17']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_17']].Hash))
            end
        end
        if Character['t_rleg_19'] ~= 0 then
            for i = 1, Character['t_rleg_20'] do
                SetPedDecoration(playerPed, GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_19']].Collection), GetHashKey(Config.Tattoos['t_rleg_1'][Character['sex']][Character['t_rleg_19']].Hash))
            end
        end
    end
end)
