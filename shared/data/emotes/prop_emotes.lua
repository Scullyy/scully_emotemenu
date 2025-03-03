return {
    name = 'Prop Emotes',
    icon = 'fa-solid fa-person-hiking',
    options = {
        {
            Label = 'Airport Bag',
            Command = 'airportbag',
            Animation = 'idle',
            Dictionary = 'anim@heists@narcotics@trash',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_suitcase_01c',
                        Placement = {
                            vec3(0.11, -0.21, -0.43),
                            vec3(-11.899900, 0.0, 30.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Axe',
            Command = 'axe',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_tool_fireaxe',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
        },
        {
            Label = 'Axe - Ground Impact',
            Command = 'axe2',
            Animation = 'ground_attack_on_spot',
            Dictionary = 'melee@large_wpn@streamed_core',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_tool_fireaxe',
                        Placement = {
                            vec3(0.016, -0.314, -0.086),
                            vec3(-97.145500, 165.074905, 13.911400),
                        },
                    },
                },
            },
        },
        {
            Label = 'Axe - Pickaxe',
            Command = 'axe3',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_tool_pickaxe',
                        Placement = {
                            vec3(0.04, -0.255, -0.138),
                            vec3(-109.023804, 163.614395, 20.609100),
                        },
                    },
                },
            },
        },
        {
            Label = 'Axe - Pickaxe Ground Impact',
            Command = 'axe4',
            Animation = 'ground_attack_on_spot',
            Dictionary = 'melee@large_wpn@streamed_core',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_tool_pickaxe',
                        Placement = {
                            vec3(0.08, -0.1, -0.04),
                            vec3(78.0, -20.0, 175.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Backpack',
            Command = 'backpack',
            Animation = 'nill',
            Dictionary = 'move_p_m_zero_rucksack',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'p_michael_backpack_s',
                        Placement = {
                            vec3(0.07, -0.11, -0.05),
                            vec3(0.0, 90.0, 175.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Basketball',
            Command = 'bball',
            Animation = 'bskball_hold_clip',
            Dictionary = 'anim@male_bskball_hold',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bskball_01',
                        Placement = {
                            vec3(0.06, 0.04, -0.12),
                            vec3(0.0, 0.0, 40.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Basketball 2',
            Command = 'bball2',
            Animation = 'photo_pose_clip',
            Dictionary = 'anim@male_bskball_photo_pose',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_bskball_01',
                        Placement = {
                            vec3(-0.01, 0.02, 0.13),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Basketball 3',
            Command = 'bball3',
            Animation = 'mx_clippose2',
            Dictionary = 'mx@pose2',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bskball_01',
                        Placement = {
                            vec3(0.04, 0.02, -0.14),
                            vec3(90.0, -99.999901, 79.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Basketball 4',
            Command = 'bball4',
            Animation = 'm_basketball_03_clip',
            Dictionary = 'anim@male_basketball_03',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bskball_01',
                        Placement = {
                            vec3(0.04, 0.02, -0.14),
                            vec3(90.0, -99.999901, 79.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'BBQ (Female)',
            Command = 'bbqf',
            Animation = 'idle_b',
            Dictionary = 'amb@prop_human_bbq@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_fish_slice_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beach Bag',
            Command = 'beachbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beachbag_05',
                        Placement = {
                            vec3(0.4, 0.03, 0.01),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beach Bag 2',
            Command = 'beachbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beachbag_06',
                        Placement = {
                            vec3(0.4, 0.03, 0.01),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beach Bag 3',
            Command = 'beachbag3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beachbag_01',
                        Placement = {
                            vec3(0.4, 0.03, 0.01),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beach Floatie',
            Command = 'beachring',
            Animation = 'beachanim_clip',
            Dictionary = 'beachanims@free',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 0,
                        Name = 'prop_beach_ring_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.01),
                            vec3(-12.0, 0.0, -2.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Box 1',
            Command = 'beerbox',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_ret_ml_beerdus',
                        Placement = {
                            vec3(0.22, 0.0, 0.0),
                            vec3(0.0, 266.0, 48.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Box 2',
            Command = 'beerbox2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_ret_ml_beeram',
                        Placement = {
                            vec3(0.22, 0.0, 0.0),
                            vec3(0.0, 266.0, 48.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Box 3',
            Command = 'beerbox3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_ret_ml_beerpride',
                        Placement = {
                            vec3(0.22, 0.0, 0.0),
                            vec3(0.0, 266.0, 48.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Box 4',
            Command = 'beerbox4',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_ret_ml_beerbar',
                        Placement = {
                            vec3(0.22, 0.0, 0.0),
                            vec3(0.0, 266.0, 60.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Female',
            Command = 'beerf',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_drinking@beer@female@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_amb_beer_bottle',
                        Placement = {
                            vec3(0.0, -0.0, 0.05),
                            vec3(15.0, 15.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beer Female 3',
            Command = 'beerf3',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_drinking@beer@female@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_amb_beer_bottle',
                        Placement = {
                            vec3(0.0, -0.0, 0.05),
                            vec3(15.0, 15.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beg',
            Command = 'beg',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beggers_sign_03',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beg 2',
            Command = 'beg2',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beggers_sign_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beg 3',
            Command = 'beg3',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beggers_sign_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.08),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Beg 4',
            Command = 'beg4',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beggers_sign_04',
                        Placement = {
                            vec3(0.0, 0.0, 0.08),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Binoculars',
            Command = 'binoculars',
            Animation = 'idle_f',
            Dictionary = 'amb@world_human_binoculars@male@idle_b',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_binoc_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Binoculars 2',
            Command = 'binoculars2',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_binoculars@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_binoc_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Bonesaw',
            Command = 'bonesaw',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = false,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_bonesaw',
                        Placement = {
                            vec3(0.11, 0.03, 0.01),
                            vec3(0.0, 180.0, -10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Bong',
            Command = 'bong',
            Animation = 'bong_stage3',
            Dictionary = 'anim@safehouse@bong',
            Options = {
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_bong_01',
                        Placement = {
                            vec3(0.1, -0.25, 0.0),
                            vec3(95.0, 190.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Bong 2',
            Command = 'bong2',
            Animation = 'bong_stage3',
            Dictionary = 'anim@safehouse@bong',
            Options = {
                Props = {
                    {
                        Bone = 18905,
                        Name = 'xm3_prop_xm3_bong_01a',
                        Placement = {
                            vec3(0.1, -0.25, 0.0),
                            vec3(95.0, 190.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Bongo Drums',
            Command = 'bongos',
            Animation = 'base',
            Dictionary = 'amb@world_human_musician@bongos@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_bongos_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Book',
            Command = 'book',
            Animation = 'cellphone_text_read_base',
            Dictionary = 'cellphone@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 6286,
                        Name = 'prop_novel_01',
                        Placement = {
                            vec3(0.15, 0.03, -0.065),
                            vec3(0.0, 180.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Boombox',
            Command = 'boombox',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_boombox_01',
                        Placement = {
                            vec3(0.27, 0.0, 0.0),
                            vec3(0.0, 263.0, 58.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Boombox 2',
            Command = 'boombox2',
            Animation = 'boombox1_clip',
            Dictionary = 'molly@boombox1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.044, 0.074, 0.0),
                            vec3(-160.984299, -88.728798, -0.619700),
                        },
                    },
                    {
                        Bone = 10706,
                        Name = 'prop_ghettoblast_02',
                        Placement = {
                            vec3(-0.231, -0.077, 0.241),
                            vec3(-179.725601, 176.740601, 23.018999),
                        },
                    },
                },
            },
        },
        {
            Label = 'Bouquet',
            Command = 'bouquet',
            Animation = 'mp_m_waremech_01_dual-0',
            Dictionary = 'impexp_int-0',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24817,
                        Name = 'prop_snow_flower_02',
                        Placement = {
                            vec3(-0.29, 0.4, -0.02),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Box',
            Command = 'box',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'hei_prop_heist_box',
                        Placement = {
                            vec3(0.025, 0.08, 0.255),
                            vec3(-145.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Briefcase',
            Command = 'brief',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_ld_case_01',
                        Placement = {
                            vec3(0.12, 0.0, 0.0),
                            vec3(0.0, 255.0, 80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Briefcase 2',
            Command = 'brief2',
            Animation = 'static',
            Dictionary = 'missheistdocksprep1hold_cellphone',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_ld_case_01',
                        Placement = {
                            vec3(0.1, 0.0, 0.0),
                            vec3(0.0, 280.0, 53.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Broom',
            Command = 'broom',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_broom',
                        Placement = {
                            vec3(-0.01, 0.04, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Broom 2',
            Command = 'broom2',
            Animation = 'idle_b',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@idles',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_broom',
                        Placement = {
                            vec3(-0.01, 0.04, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Broom 3',
            Command = 'broom3',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_broom',
                        Placement = {
                            vec3(-0.01, 0.04, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Broom 4',
            Command = 'broom4',
            Animation = 'idle_d',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@idles',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_broom',
                        Placement = {
                            vec3(-0.01, 0.04, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Camera',
            Command = 'camera',
            Animation = 'base',
            Dictionary = 'amb@world_human_paparazzi@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_pap_camera_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_bike_business',
                    AttachToProp = true,
                    Name = 'scr_bike_cfid_camera_flash',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Camera 2',
            Command = 'camera2',
            Animation = 'cellphone_text_read_base_cover_low',
            Dictionary = 'cellphone@female',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_ing_camera_01',
                        Placement = {
                            vec3(0.01, -0.03, 0.052),
                            vec3(-172.048706, -163.938904, -29.022100),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_bike_business',
                    AttachToProp = true,
                    Name = 'scr_bike_cfid_camera_flash',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Camera 3',
            Command = 'camera3',
            Animation = 'cellphone_text_read_base_cover_low',
            Dictionary = 'cellphone@female',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_ing_camera_01',
                        Placement = {
                            vec3(0.01, -0.03, 0.052),
                            vec3(-172.048706, -163.938904, -29.022100),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_bike_business',
                    AttachToProp = true,
                    Name = 'scr_bike_cfid_camera_flash',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Camera 4 - Carry News Camera',
            Command = 'camera4',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_v_cam_01',
                        Placement = {
                            vec3(0.21, 0.03, -0.01),
                            vec3(90.0, 176.0, 79.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Drink',
            Command = 'carrydrink',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_drinking@coffee@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_pizzahut_cup_a',
                        Placement = {
                            vec3(0.14, 0.01, -0.04),
                            vec3(-83.0, 2.0, -36.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Food Bag',
            Command = 'carryfoodbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_bs_bag_01',
                        Placement = {
                            vec3(0.33, 0.0, -0.03),
                            vec3(0.001736, -80.0, 110.065201),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Food Bag 2',
            Command = 'carryfoodbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_cb_bag_01',
                        Placement = {
                            vec3(0.38, 0.0, -0.03),
                            vec3(0.001736, -80.0, 110.065201),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Food Bag 3',
            Command = 'carryfoodbag3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_bag1',
                        Placement = {
                            vec3(0.38, 0.0, -0.03),
                            vec3(0.001736, -80.0, 110.065201),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Menu',
            Command = 'carrymenu',
            Animation = 'base',
            Dictionary = 'missfam4',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'bzzz_pizzahut_menu_a',
                        Placement = {
                            vec3(0.2, 0.11, 0.06),
                            vec3(98.0, 46.0, -128.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Pizza Box',
            Command = 'carrypizza',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_pizza_box_02',
                        Placement = {
                            vec3(0.01, -0.1, -0.159),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Pizza Box 2',
            Command = 'carrypizza2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'bzzz_pizzahut_box_a',
                        Placement = {
                            vec3(0.28, 0.1, 0.19),
                            vec3(52.0, -69.0, -187.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cash Briefcase',
            Command = 'cashcase',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bkr_prop_biker_case_shut',
                        Placement = {
                            vec3(0.1, 0.01, 0.004),
                            vec3(0.0, 0.0, -90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cash Briefcase 2',
            Command = 'cashcase2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cash_case_01',
                        Placement = {
                            vec3(-0.005, -0.187, -0.14),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cash Briefcase 3',
            Command = 'cashcase3',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cash_case_02',
                        Placement = {
                            vec3(0.005, -0.117, -0.14),
                            vec3(14.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cash Briefcase 4 - Diamonds',
            Command = 'cashcase4',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ch_prop_ch_security_case_01a',
                        Placement = {
                            vec3(0.0, -0.09, -0.18),
                            vec3(14.4, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box',
            Command = 'cbbox',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ml_beerben1',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box 2',
            Command = 'cbbox2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ml_beerbla1',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box 3',
            Command = 'cbbox3',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ml_beerjak1',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box 4',
            Command = 'cbbox4',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ml_beerlog1',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box 5',
            Command = 'cbbox5',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ml_beerpis1',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Beer Box 6',
            Command = 'cbbox6',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_beer_box_01',
                        Placement = {
                            vec3(0.02, -0.06, -0.12),
                            vec3(-180.0, -180.0, 1.99),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Cones',
            Command = 'carrycones',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.30, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.25, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Carry Cones 2',
            Command = 'carrycones2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.30, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.25, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.20, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 24818,
                        Name = 'prop_mp_cone_02',
                        Placement = {
                            vec3(-0.15, 0.40, 0.0),
                            vec3(0.0, 90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Champagne Spray',
            Command = 'champagnespray',
            Animation = 'idle_a',
            Dictionary = 'anim@mp_player_intupperspray_champagne',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_battle_champ_open',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_ba_club',
                    CanHold = true,
                    AttachToProp = true,
                    Name = 'scr_ba_club_champagne_spray',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                    },
                    Wait = 500,
                },
            },
        },
        {
            Label = 'Champagne Waiter',
            Command = 'champw',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'vw_prop_vw_tray_01a',
                        Placement = {
                            vec3(0.0, 0.0, 0.01),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                    {
                        Bone = 28422,
                        Name = 'prop_champ_cool',
                        Placement = {
                            vec3(0.0, 0.0, 0.01),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Champagne Waiter 2',
            Command = 'champw2',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'h4_prop_h4_champ_tray_01b',
                        Placement = {
                            vec3(0.0, 0.0, 0.01),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Champagne Waiter 3',
            Command = 'champw3',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'h4_prop_h4_champ_tray_01c',
                        Placement = {
                            vec3(0.0, 0.0, 0.01),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cig',
            Command = 'cig',
            Animation = 'enter',
            Dictionary = 'amb@world_human_smoking@male@male_a@enter',
            Options = {
                Duration = 2600,
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 47419,
                        Name = 'prop_amb_ciggy_01',
                        Placement = {
                            vec3(0.015, -0.009, 0.003),
                            vec3(55.0, 0.0, 110.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cigar',
            Command = 'cigar',
            Animation = 'enter',
            Dictionary = 'amb@world_human_smoking@male@male_a@enter',
            Options = {
                Duration = 2600,
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 47419,
                        Name = 'prop_cigar_02',
                        Placement = {
                            vec3(0.01, 0.0, 0.0),
                            vec3(50.0, 0.0, -80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cigar 2',
            Command = 'cigar2',
            Animation = 'enter',
            Dictionary = 'amb@world_human_smoking@male@male_a@enter',
            Options = {
                Duration = 2600,
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 47419,
                        Name = 'prop_cigar_01',
                        Placement = {
                            vec3(0.01, 0.0, 0.0),
                            vec3(50.0, 0.0, -80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Circular Saw',
            Command = 'circularsaw',
            Animation = 'drill_straight_fail',
            Dictionary = 'anim@heists@fleeca_bank@drilling',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_consaw',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 90.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Clean',
            Command = 'clean',
            Animation = 'base',
            Dictionary = 'timetable@floyd@clean_kitchen@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_sponge_01',
                        Placement = {
                            vec3(0.0, 0.0, -0.01),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Clean 2',
            Command = 'clean2',
            Animation = 'base',
            Dictionary = 'amb@world_human_maid_clean@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_sponge_01',
                        Placement = {
                            vec3(0.0, 0.0, -0.01),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Clipboard',
            Command = 'clipboard',
            Animation = 'base',
            Dictionary = 'missfam4',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 36029,
                        Name = 'p_amb_clipboard_01',
                        Placement = {
                            vec3(0.16, 0.08, 0.1),
                            vec3(-130.0, -50.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cone Head',
            Command = 'conehead',
            Animation = 'fidget_07',
            Dictionary = 'move_m@drunk@verydrunk_idles@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_roadcone02b',
                        Placement = {
                            vec3(0.05, 0.02, -0.0),
                            vec3(30.0, 90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cop Wand',
            Command = 'copwand',
            Animation = 'base',
            Dictionary = 'amb@world_human_car_park_attendant@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_parking_wand_01',
                        Placement = {
                            vec3(0.12, 0.05, 0.0),
                            vec3(80.0, -20.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cop Beacon',
            Command = 'copbeacon',
            Animation = 'base',
            Dictionary = 'amb@world_human_car_park_attendant@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_parking_wand_01',
                        Placement = {
                            vec3(0.12, 0.05, 0.0),
                            vec3(80.0, -20.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Crack Head',
            Command = 'crackhead',
            Animation = 'base',
            Dictionary = 'special_ped@zombie@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_bowie_knife',
                        Placement = {
                            vec3(-0.128, -0.022, 0.021),
                            vec3(-150.000504, 179.998901, -30.010500),
                        },
                    },
                    {
                        Bone = 26614,
                        Name = 'ng_proc_cigpak01a',
                        Placement = {
                            vec3(0.01, -0.019, 0.092),
                            vec3(-82.407303, 178.600906, 29.919500),
                        },
                    },
                },
            },
        },
        {
            Label = 'Cranial Saw',
            Command = 'cranialsaw',
            Animation = 'drill_straight_end',
            Dictionary = 'anim@heists@fleeca_bank@drilling',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cranial_saw',
                        Placement = {
                            vec3(0.0, 0.0, 0.05),
                            vec3(90.0, 0.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Dig',
            Command = 'dig',
            Animation = 'a_burial',
            Dictionary = 'random@burial',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_shovel',
                        Placement = {
                            vec3(0.0, 0.0, 0.24),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                    {
                        Bone = 28422,
                        Name = 'prop_ld_shovel_dirt',
                        Placement = {
                            vec3(0.0, 0.0, 0.24),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Digiscan 1',
            Command = 'digiscan',
            Animation = 'aim_med_loop',
            Dictionary = 'weapons@misc@digi_scanner',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'w_am_digiscanner',
                        Placement = {
                            vec3(0.048, 0.078, 0.004),
                            vec3(-81.689301, 2.561600, -15.790900),
                        },
                    },
                },
            },
        },
        {
            Label = 'Digiscan 2',
            Command = 'digiscan2',
            Animation = 'aim_low_loop',
            Dictionary = 'weapons@misc@digi_scanner',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'w_am_digiscanner',
                        Placement = {
                            vec3(0.048, 0.078, 0.004),
                            vec3(-81.689301, 2.561600, -15.790900),
                        },
                    },
                },
            },
        },
        {
            Label = 'Digiscan 3',
            Command = 'digiscan3',
            Animation = 'aim_high_loop',
            Dictionary = 'weapons@misc@digi_scanner',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'w_am_digiscanner',
                        Placement = {
                            vec3(0.048, 0.078, 0.004),
                            vec3(-81.689301, 2.561600, -15.790900),
                        },
                    },
                },
            },
        },
        {
            Label = 'Doggy',
            Command = 'doggy',
            Animation = 'mp_m_waremech_01_dual-0',
            Dictionary = 'impexp_int-0',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24817,
                        Name = 'xm3_prop_xm3_toy_dog_01a',
                        Placement = {
                            vec3(-0.1, 0.46, -0.016),
                            vec3(-180.0, -90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Drill',
            Command = 'drilltool',
            Animation = 'drill_straight_end',
            Dictionary = 'anim@heists@fleeca_bank@drilling',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_drill',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 90.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Duffel Bag',
            Command = 'dufbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bkr_prop_duffel_bag_01a',
                        Placement = {
                            vec3(0.26, 0.04, 0.0),
                            vec3(90.0, 0.0, -78.989998),
                        },
                    },
                },
            },
        },
        {
            Label = 'Duffel Bag 2',
            Command = 'dufbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_big_bag_01',
                        Placement = {
                            vec3(0.25, 0.04, 0.0),
                            vec3(90.0, 0.0, -78.989998),
                        },
                    },
                },
            },
        },
        {
            Label = 'Duffel Bag 3',
            Command = 'dufbag3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_gc_bag02',
                        Placement = {
                            vec3(0.33, 0.04, 0.0),
                            vec3(90.0, 0.0, -78.989998),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fishing 1',
            Command = 'fishing1',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_stand_fishing@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_fishing_rod_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fishing 2',
            Command = 'fishing2',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_stand_fishing@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_fishing_rod_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fishing 3',
            Command = 'fishing3',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_stand_fishing@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_fishing_rod_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Flute',
            Command = 'flute',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_champ_flute',
                        Placement = {
                            vec3(0.1, -0.03, 0.03),
                            vec3(-100.0, 0.0, -10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray',
            Command = 'foodtraya',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_bs_tray_03',
                        Placement = {
                            vec3(0.01, -0.04, -0.139),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray B',
            Command = 'foodtrayb',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_bs_tray_02',
                        Placement = {
                            vec3(0.01, -0.04, -0.139),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray C',
            Command = 'foodtrayc',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_cb_tray_02',
                        Placement = {
                            vec3(0.01, -0.04, -0.139),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray D',
            Command = 'foodtrayd',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.01, -0.04, -0.139),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray E',
            Command = 'foodtraye',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_tray_03',
                        Placement = {
                            vec3(0.01, -0.04, -0.139),
                            vec3(20.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray F',
            Command = 'foodtrayf',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_bs_tray_02',
                        Placement = {
                            vec3(0.25, 0.1, 0.07),
                            vec3(-110.548393, 73.352928, -16.338362),
                        },
                    },
                    {
                        Bone = 18905,
                        Name = 'prop_food_bs_tray_03',
                        Placement = {
                            vec3(0.22, 0.13, -0.1),
                            vec3(-127.772552, 110.207474, -3.588626),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray G',
            Command = 'foodtrayg',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_cb_tray_02',
                        Placement = {
                            vec3(0.25, 0.1, 0.07),
                            vec3(-110.548393, 73.352928, -16.338362),
                        },
                    },
                    {
                        Bone = 18905,
                        Name = 'prop_food_cb_tray_02',
                        Placement = {
                            vec3(0.22, 0.13, -0.1),
                            vec3(-127.772552, 110.207474, -3.588626),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray H',
            Command = 'foodtrayh',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.25, 0.1, 0.07),
                            vec3(-110.548393, 73.352928, -16.338362),
                        },
                    },
                    {
                        Bone = 18905,
                        Name = 'prop_food_tray_03',
                        Placement = {
                            vec3(0.22, 0.13, -0.1),
                            vec3(-127.772552, 110.207474, -3.588626),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray I',
            Command = 'foodtrayi',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.25, 0.1, 0.07),
                            vec3(-110.548393, 73.352928, -16.338362),
                        },
                    },
                    {
                        Bone = 18905,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.22, 0.13, -0.1),
                            vec3(-127.772552, 110.207474, -3.588626),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray J',
            Command = 'foodtrayj',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_bs_tray_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray K',
            Command = 'foodtrayk',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_bs_tray_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray L',
            Command = 'foodtrayl',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_bs_tray_03',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray M',
            Command = 'foodtraym',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_cb_tray_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray N',
            Command = 'foodtrayn',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Food Tray O',
            Command = 'foodtrayo',
            Animation = 'idle',
            Dictionary = 'anim@move_f@waitress',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_food_tray_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Flame Torch',
            Command = 'ftorch',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'bzzz_prop_torch_fire001',
                        Placement = {
                            vec3(0.14, 0.21, -0.08),
                            vec3(-110.0, -1.0, -10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fire Torch 2',
            Command = 'ftorch2',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bzzz_prop_torch_fire001',
                        Placement = {
                            vec3(-0.08, -0.03, -0.17),
                            vec3(11.418100, -159.102600, 15.033800),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fuel',
            Command = 'fuel',
            Animation = 'fire',
            Dictionary = 'weapons@misc@jerrycan@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'w_am_jerrycan',
                        Placement = {
                            vec3(0.18, 0.13, -0.24),
                            vec3(-165.869385, -11.212276, -32.945301),
                        },
                    },
                },
            },
        },
        {
            Label = 'Fuel 2 (Carry)',
            Command = 'fuel2',
            Animation = 'idle',
            Dictionary = 'weapons@misc@jerrycan@franklin',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'w_am_jerrycan',
                        Placement = {
                            vec3(0.26, 0.05, 0.03),
                            vec3(80.0, 180.0, 79.989998),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gamer',
            Command = 'gamer',
            Animation = 'base',
            Dictionary = 'playing@with_controller',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_controller_01',
                        Placement = {
                            vec3(0.289, 0.411, 0.002),
                            vec3(-44.017399, 88.610298, -1.438500),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bag',
            Command = 'gbag',
            Animation = '_idle_garbage_man',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_street_binbag_01',
                        Placement = {
                            vec3(0.0, 0.04, -0.02),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bin',
            Command = 'gbin',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bin_08open',
                        Placement = {
                            vec3(0.0, -0.42, -1.29),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bin 2',
            Command = 'gbin2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_bin_01',
                        Placement = {
                            vec3(0.0, -0.42, -1.29),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bin 3',
            Command = 'gbin3',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_bin_03',
                        Placement = {
                            vec3(0.0, -0.42, -1.29),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bin 4',
            Command = 'gbin4',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bin_08a',
                        Placement = {
                            vec3(0.0, -0.42, -1.29),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Garbage Bin 5',
            Command = 'gbin5',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_bin_07d',
                        Placement = {
                            vec3(-0.01, -0.22, -0.86),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gift',
            Command = 'gift',
            Animation = 'bz_give',
            Dictionary = 'bz@give_love@anim',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_gift_purple',
                        Placement = {
                            vec3(0.15, -0.03, -0.14),
                            vec3(-77.0, -120.0, 40.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gift 2',
            Command = 'gift2',
            Animation = 'bz_give',
            Dictionary = 'bz@give_love@anim',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_gift_orange',
                        Placement = {
                            vec3(0.15, -0.03, -0.14),
                            vec3(-77.0, -120.0, 40.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gift 3',
            Command = 'gift3',
            Animation = 'bz_give',
            Dictionary = 'bz@give_love@anim',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_gift_jewel',
                        Placement = {
                            vec3(0.12, 0.0, -0.19),
                            vec3(-41.0, -120.0, 40.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gift 4',
            Command = 'gift4',
            Animation = 'bz_give',
            Dictionary = 'bz@give_love@anim',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'bzzz_prop_gift_bonbonier',
                        Placement = {
                            vec3(0.12, 0.0, -0.19),
                            vec3(-41.0, -120.0, 40.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Gift 5',
            Command = 'gift5',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'xm3_prop_xm3_present_01a',
                        Placement = {
                            vec3(0.00, -0.18, -0.16),
                            vec3(0.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Golf Swing',
            Command = 'golfswing',
            Animation = 'swing_a_mark',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_golf_wood_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar',
            Command = 'guitar',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(0.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar 2',
            Command = 'guitar2',
            Animation = '001370_02_trvs_8_guitar_beatdown_idle_busker',
            Dictionary = 'switch@trevor@guitar_beatdown',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(-0.05, 0.31, 0.1),
                            vec3(0.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar 3',
            Command = 'guitar3',
            Animation = 'base',
            Dictionary = 'misssnowie@gatlax',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(-0.051, 0.277, -0.029900),
                            vec3(-140.334900, 166.330002, 29.759001),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Back',
            Command = 'guitarback',
            Animation = 'idle_a',
            Dictionary = 'amb@bagels@male@walking@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(0.2, -0.17, 0.05),
                            vec3(0.0, 70.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Back 2',
            Command = 'guitarback2',
            Animation = 'idle_a',
            Dictionary = 'amb@bagels@male@walking@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_01',
                        Placement = {
                            vec3(0.25, -0.15, 0.05),
                            vec3(-5.0, 70.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Back 3',
            Command = 'guitarback3',
            Animation = 'idle_a',
            Dictionary = 'amb@bagels@male@walking@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_02',
                        Placement = {
                            vec3(0.2, -0.17, 0.05),
                            vec3(0.0, 70.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Back 4',
            Command = 'guitarback4',
            Animation = 'idle_a',
            Dictionary = 'amb@bagels@male@walking@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_03',
                        Placement = {
                            vec3(0.2, -0.15, 0.05),
                            vec3(-5.0, 70.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Case Carry',
            Command = 'guitarcarry',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'sf_prop_sf_guitar_case_01a',
                        Placement = {
                            vec3(0.28, -0.2, -0.06),
                            vec3(0.0, 0.0, 15.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Accoustic',
            Command = 'guitarcarry2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(0.15, -0.14, -0.02),
                            vec3(-101.508301, 5.725100, 29.498699),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Electric',
            Command = 'guitarcarry3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_el_guitar_01',
                        Placement = {
                            vec3(0.11, -0.12, -0.05),
                            vec3(-80.0, 0.0, 21.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Electric 2',
            Command = 'guitarcarry4',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_el_guitar_02',
                        Placement = {
                            vec3(0.11, -0.12, -0.05),
                            vec3(-80.0, 0.0, 21.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Electric 3',
            Command = 'guitarcarry5',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_el_guitar_03',
                        Placement = {
                            vec3(0.11, -0.12, -0.05),
                            vec3(-80.0, 0.0, 21.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Electric 4',
            Command = 'guitarcarry6',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'vw_prop_casino_art_guitar_01a',
                        Placement = {
                            vec3(0.11, -0.12, -0.05),
                            vec3(-80.0, 0.0, 21.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Carry Electric 5',
            Command = 'guitarcarry7',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'sf_prop_sf_el_guitar_02a',
                        Placement = {
                            vec3(0.11, -0.12, -0.05),
                            vec3(-80.0, 0.0, 21.999901),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Electric',
            Command = 'guitarelectric',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_01',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(0.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Electric 2',
            Command = 'guitarelectric2',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_03',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(0.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Idle',
            Command = 'guitaridle',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(0.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Idle 2',
            Command = 'guitaridle2',
            Animation = '001370_02_trvs_8_guitar_beatdown_idle_busker',
            Dictionary = 'switch@trevor@guitar_beatdown',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_acc_guitar_01',
                        Placement = {
                            vec3(-0.05, 0.3, 0.1),
                            vec3(5.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Idle 3',
            Command = 'guitaridle3',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_01',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(5.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Idle 4',
            Command = 'guitaridle4',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_03',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(5.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guitar Idle 5',
            Command = 'guitaridle5',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_musician@guitar@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 24818,
                        Name = 'prop_el_guitar_02',
                        Placement = {
                            vec3(-0.1, 0.31, 0.1),
                            vec3(5.0, 20.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Guncase',
            Command = 'guncase',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_gun_case_01',
                        Placement = {
                            vec3(0.1, 0.02, -0.02),
                            vec3(40.0, 145.0, 115.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hammer',
            Command = 'hammer',
            Animation = 'base',
            Dictionary = 'amb@world_human_hammering@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_hammer',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Handbag',
            Command = 'handbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ps_bag_01',
                        Placement = {
                            vec3(0.4, 0.03, 0.),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Handbag 2',
            Command = 'handbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'v_ret_ps_bag_02',
                        Placement = {
                            vec3(0.52, 0.03, 0.),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Handbag 3',
            Command = 'handbag3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_amb_handbag_01',
                        Placement = {
                            vec3(0.35, 0.03, 0.),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hitchhike',
            Command = 'hitchhike',
            Animation = 'idle_f',
            Dictionary = 'random@hitch_lift',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'w_am_jerrycan',
                        Placement = {
                            vec3(0.32, -0.01, 0.0),
                            vec3(-162.423004, 74.830002, 58.790001),
                        },
                    },
                    {
                        Bone = 40269,
                        Name = 'prop_michael_backpack',
                        Placement = {
                            vec3(-0.07, -0.21, -0.11),
                            vec3(-144.929993, 117.358002, -6.16),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hoe',
            Command = 'hoe',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_shovel5',
                        Placement = {
                            vec3(0.00, 0.00, -0.50),
                            vec3(-20.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hoe 2',
            Command = 'hoe2',
            Animation = 'idle_b',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@idles',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_shovel5',
                        Placement = {
                            vec3(0.00, 0.00, -0.50),
                            vec3(-20.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hoe 3',
            Command = 'hoe3',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_shovel5',
                        Placement = {
                            vec3(0.00, 0.00, -0.50),
                            vec3(-20.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hoe 4',
            Command = 'hoe4',
            Animation = 'idle_d',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@idles',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_shovel5',
                        Placement = {
                            vec3(0.00, 0.00, -0.50),
                            vec3(-20.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Hold Firework',
            Command = 'holdfw',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'ind_prop_firework_01',
                        Placement = {
                            vec3(0.11, 0.32, -0.24),
                            vec3(-130.0688242, -2.5736034, -3.0631483),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_indep_fireworks',
                    AttachToProp = true,
                    CanHold = true,
                    Color = {R = 255, G = 0, B = 0, A = 1.0},
                    Name = 'scr_indep_firework_trail_spawn',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Hold Firework 2',
            Command = 'holdfw2',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'ind_prop_firework_01',
                        Placement = {
                            vec3(0.11, 0.32, -0.24),
                            vec3(-130.0688242, -2.5736034, -3.0631483),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_indep_fireworks',
                    AttachToProp = true,
                    CanHold = true,
                    Name = 'scr_indep_firework_trail_spawn',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Hold Firework 3',
            Command = 'holdfw3',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'ind_prop_firework_01',
                        Placement = {
                            vec3(0.11, 0.32, -0.24),
                            vec3(-130.0688242, -2.5736034, -3.0631483),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_indep_fireworks',
                    AttachToProp = true,
                    CanHold = true,
                    Color = {
                        {R = 255, G = 0, B = 0, A = 1.0}, 
                        {R = 0, G = 255, B = 0, A = 1.0}, 
                        {R = 0, G = 0, B = 255, A = 1.0}
                    },
                    Name = 'scr_indep_firework_trail_spawn',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Hold Firework 4',
            Command = 'holdfw4',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'ind_prop_firework_01',
                        Placement = {
                            vec3(0.18, 0.29, -0.07),
                            vec3(-106.746696, -2.912200, -19.596500),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_rcpaparazzo1',
                    AttachToProp = true,
                    Color = {
                        {R = 255, G = 0, B = 0, A = 1.0},
                        {R = 0, G = 255, B = 0, A = 1.0},
                        {R = 0, G = 0, B = 255, A = 1.0},
                        {R = 177, G = 5, B = 245, A = 1.0},
                        {R = 251, G = 3, B = 255, A = 1.0},
                        {R = 2, G = 238, B = 250, A = 1.0},
                        {R = 252, G = 248, B = 0, A = 1.0},
                        {R = 245, G = 245, B = 245, A = 1.0}
                    },
                    Name = 'scr_mich4_firework_trailburst',
                    Placement = {
                        vec3(0.0, 0.0, -0.5),
                        vec3(0.0, 0.0, 0.0),
                        0.6,
                    },
                    Wait = 650,
                },
            },
        },
        {
            Label = 'Hump (Bear)',
            Command = 'hump2',
            Animation = 'skull_loving_bear',
            Dictionary = 'timetable@trevor@skull_loving_bear',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_mr_raspberry_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Ice Fishing',
            Command = 'icefishing',
            Animation = 'base',
            Dictionary = 'timetable@ron@ig_3_couch',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 0,
                        Name = 'pprp_icefishing_box_02',
                        Placement = {
                            vec3(-0.05, 0.0, -0.63),
                            vec3(7.0, 0.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Ice Fishing 2',
            Command = 'icefishing2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'pprp_icefishing_box_01',
                        Placement = {
                            vec3(0.8, 0.03, 0.04),
                            vec3(0.0, -90.0, 100.0),
                        },
                    },
                    {
                        Bone = 24818,
                        Name = 'pprp_icefishing_augur',
                        Placement = {
                            vec3(-0.8, -0.2, 0.0),
                            vec3(0.0, 90.0, 0.0)
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card - Drivers License',
            Command = 'idcard',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_franklin_dl',
                        Placement = {
                            vec3(0.1, 0.02, -0.03),
                            vec3(-90.0, 170.0, 78.999001),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 2 - FIB',
            Command = 'idcard2',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_fib_badge',
                        Placement = {
                            vec3(0.06, 0.021, -0.04),
                            vec3(-90.0, -180.0, 78.999001),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 3 - Humane Labs',
            Command = 'idcard3',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'p_ld_id_card_002',
                        Placement = {
                            vec3(0.1, 0.02, -0.03),
                            vec3(-90.0, -180.0, 78.999001),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 4 - Gruppe Sechs',
            Command = 'idcard4',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_michael_sec_id',
                        Placement = {
                            vec3(0.1, 0.02, -0.03),
                            vec3(-90.0, -180.0, 78.999001),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 5 - LSPD Badge',
            Command = 'idcard5',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_lspd_badge',
                        Placement = {
                            vec3(0.08, -0.012, -0.06),
                            vec3(-90.0, 180.0, 69.989998),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 6 - Drivers License',
            Command = 'idcard6',
            Animation = 'player_one_dual-8',
            Dictionary = 'paper_1_rcm_alt1-8',
            Options = {
                Flags = {
                    Move = true,
                    Stuck = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bkr_prop_fakeid_singledriverl',
                        Placement = {
                            vec3(0.07, 0.026, -0.032),
                            vec3(-10.868300, -177.849899, 23.637699),
                        },
                    },
                },
            },
        },
        {
            Label = 'ID Card 7 - Passport',
            Command = 'idcard7',
            Animation = 'static',
            Dictionary = 'amb@code_human_wander_clipboard@male@base',
            Options = {
                Flags = {
                    Move = true,
                    Stuck = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'bkr_prop_fakeid_openpassport',
                        Placement = {
                            vec3(-0.023, 0.033, -0.06),
                            vec3(-80.708298, 90.866997, 41.481400),
                        },
                    },
                },
            },
        },
        {
            Label = 'JackHammer',
            Command = 'jackhammer',
            Animation = 'base',
            Dictionary = 'amb@world_human_const_drill@male@drill@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_jackham',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'JerkOff! Female',
            Command = 'jerkf',
            Animation = 'trev_jerking_off_loop',
            Dictionary = 'switch@trevor@jerking_off',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_dildo_01',
                        Placement = {
                            vec3(0.09, 0.05, -0.03),
                            vec3(90.0, 80.0, 30.0),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Joint',
            Command = 'joint',
            Animation = 'enter',
            Dictionary = 'amb@world_human_smoking@male@male_a@enter',
            Options = {
                Duration = 2600,
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 47419,
                        Name = 'p_cs_joint_02',
                        Placement = {
                            vec3(0.015, -0.009, 0.003),
                            vec3(55.0, 0.0, 110.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Lawnchair',
            Command = 'lawnchair',
            Animation = 'ig_5_p3_base',
            Dictionary = 'timetable@ron@ig_5_p3',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 0,
                        Name = 'prop_skid_chair_02',
                        Placement = {
                            vec3(0.025, -0.2, -0.1),
                            vec3(45.0, -5.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Lawnchair 2',
            Command = 'lawnchair2',
            Animation = 'base_amanda',
            Dictionary = 'timetable@reunited@ig_10',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 0,
                        Name = 'prop_skid_chair_02',
                        Placement = {
                            vec3(0.025, -0.15, -0.1),
                            vec3(45.0, 5.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Lawnchair 3',
            Command = 'lawnchair3',
            Animation = 'base',
            Dictionary = 'timetable@ron@ig_3_couch',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 0,
                        Name = 'prop_skid_chair_02',
                        Placement = {
                            vec3(-0.05, 0.0, -0.2),
                            vec3(5.0, 0.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Leaf Blower',
            Command = 'leafblower',
            Animation = 'base',
            Dictionary = 'amb@world_human_gardener_leaf_blower@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_leaf_blower_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_armenian3',
                    CanHold = true,
                    AttachToProp = true,
                    Name = 'ent_anim_leaf_blower',
                    Placement = {
                        vec3(1.0, 0.0, -0.25),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 2000,
                },
            },
        },
        {
            Label = 'Leaning With Phone',
            Command = 'leanphone',
            Animation = 'base',
            Dictionary = 'amb@world_human_leaning@male@wall@back@mobile@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Make It Rain',
            Command = 'makeitrain',
            Animation = 'idle_a',
            Dictionary = 'anim@mp_player_intupperraining_cash',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_anim_cash_pile_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(180.0, 0.0, 70.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'scr_xs_celebration',
                    CanHold = true,
                    Auto = true,
                    AttachToProp = true,
                    Name = 'scr_xs_money_rain',
                    Placement = {
                        vec3(0.0, 0.0, -0.09),
                        vec3(-80.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 500,
                },
            },
        },
        {
            Label = 'Mallet',
            Command = 'mallet',
            Animation = 'base',
            Dictionary = 'amb@world_human_hammering@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_mallet',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Map',
            Command = 'map',
            Animation = 'base',
            Dictionary = 'amb@world_human_tourist_map@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tourist_map_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Map 2',
            Command = 'map2',
            Animation = 'idle_a',
            Dictionary = 'amb@code_human_in_bus_passenger_idles@female@tablet@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tourist_map_01',
                        Placement = {
                            vec3(-0.05, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Medic Bag',
            Command = 'medbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'xm_prop_x17_bag_med_01a',
                        Placement = {
                            vec3(0.39, -0.06, -0.06),
                            vec3(-100.0, -180.0, -78.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Medic Bag 2',
            Command = 'medbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_ret_ta_firstaid',
                        Placement = {
                            vec3(0.21, 0., -0.03),
                            vec3(-100.0, -180.0, -78.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Megaphone',
            Command = 'megaphone',
            Animation = 'megaphone_clip',
            Dictionary = 'molly@megaphone',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_megaphone_01',
                        Placement = {
                            vec3(0.05, 0.054, -0.006),
                            vec3(-71.885498, -13.088900, -16.024200),
                        },
                    },
                },
            },
        },
        {
            Label = 'Megaphone 2',
            Command = 'megaphone2',
            Animation = 'megaphone_clip',
            Dictionary = 'molly@megaphone2',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_megaphone_01',
                        Placement = {
                            vec3(0.05, 0.054, -0.006),
                            vec3(-71.885498, -13.088900, -16.024200),
                        },
                    },
                },
            },
        },
        {
            Label = 'Megaphone 3',
            Command = 'megaphone3',
            Animation = 'base',
            Dictionary = 'amb@world_human_mobile_film_shocking@female@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_megaphone_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Mop',
            Command = 'mop',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_mop_s',
                        Placement = {
                            vec3(-0.02, -0.06, -0.2),
                            vec3(-13.377, 10.356800, 17.968100),
                        },
                    },
                },
            },
        },
        {
            Label = 'Mop 2',
            Command = 'mop2',
            Animation = 'idle_scrub_small_player',
            Dictionary = 'move_mop',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_mop_s',
                        Placement = {
                            vec3(0.0, 0.0, 0.12),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Mugshot',
            Command = 'mugshot',
            Animation = 'loop',
            Dictionary = 'mp_character_creation@customise@male_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 58868,
                        Name = 'prop_police_id_board',
                        Placement = {
                            vec3(0.12, 0.24, 0.0),
                            vec3(5.0, 0.0, 70.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Murdered',
            Command = 'murdered',
            Animation = 'dead_e',
            Dictionary = 'dead',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'bzzz_murder_axe001',
                        Placement = {
                            vec3(-0.22, 0.34, -0.3),
                            vec3(-56.0, 98.0, 34.0),
                        },
                    },
                    {
                        Bone = 57005,
                        Name = 'p_bloodsplat_s',
                        Placement = {
                            vec3(0.28, 0.17, -0.12),
                            vec3(-98.0, -51.0, 237.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Murdered 2',
            Command = 'murdered2',
            Animation = 'dead_a',
            Dictionary = 'dead',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'w_pi_heavypistol',
                        Placement = {
                            vec3(0.27, 0.35, 0.05),
                            vec3(-98.0, 2.0, 183.0),
                        },
                    },
                    {
                        Bone = 57005,
                        Name = 'p_bloodsplat_s',
                        Placement = {
                            vec3(-0.8, 0.41, 0.0),
                            vec3(-98.0, -7.0, 237.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Murdered 3',
            Command = 'murdered3',
            Animation = 'dead_b',
            Dictionary = 'dead',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'bzzz_murder_machete001',
                        Placement = {
                            vec3(-0.22, 0.18, -0.67),
                            vec3(196.0, 157.0, -35.0),
                        },
                    },
                    {
                        Bone = 57005,
                        Name = 'p_bloodsplat_s',
                        Placement = {
                            vec3(-0.28, -0.15, 0.0),
                            vec3(266.200012, 182.300003, -10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Nail gun',
            Command = 'nailgun',
            Animation = 'drill_straight_end',
            Dictionary = 'anim@heists@fleeca_bank@drilling',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_nailgun',
                        Placement = {
                            vec3(0.00, 0.00, 0.00),
                            vec3(0.00, 0.00, 90.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'News Boom Microphone',
            Command = 'newsbmic',
            Animation = 'mcs2_crew_idle_m_boom',
            Dictionary = 'missfra1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_v_bmike_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'News Camera',
            Command = 'newscam',
            Animation = 'fin_c2_mcs_1_camman',
            Dictionary = 'missfinale_c2mcs_1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_v_cam_01',
                        Placement = {
                            vec3(0.0, 0.03, 0.01),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'News Microphone',
            Command = 'newsmic',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 4154,
                        Name = 'p_ing_microphonel_01',
                        Placement = {
                            vec3(-0.0, -0.02, 0.11),
                            vec3(0.0, 0.0, 60.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Newspaper',
            Command = 'newspaper',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_clipboard@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_cliff_paper',
                        Placement = {
                            vec3(0.097, -0.028, -0.017),
                            vec3(107.400803, 3.271200, -10.508),
                        },
                    },
                },
            },
        },
        {
            Label = 'Newspaper 2',
            Command = 'newspaper2',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_clipboard@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'ng_proc_paper_news_quik',
                        Placement = {
                            vec3(0.159, 0.029, -0.01),
                            vec3(90.999802, 0.008700, 0.5),
                        },
                    },
                },
            },
        },
        {
            Label = 'Newspaper 3',
            Command = 'newspaper3',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_clipboard@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'ng_proc_paper_news_rag',
                        Placement = {
                            vec3(0.176, -0.000700, 0.02),
                            vec3(99.830597, 3.284100, -4.718500),
                        },
                    },
                },
            },
        },
        {
            Label = 'Notepad',
            Command = 'notepad',
            Animation = 'base',
            Dictionary = 'missheistdockssetup1clipboard@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_notepad_01',
                        Placement = {
                            vec3(0.1, 0.02, 0.05),
                            vec3(10.0, 0.0, 0.0),
                        },
                    },
                    {
                        Bone = 58866,
                        Name = 'prop_pencil_01',
                        Placement = {
                            vec3(0.11, -0.02, 0.001),
                            vec3(-120.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Walking Stick',
            Command = 'walkingstick',
            Animation = 'static',
            Dictionary = 'missheistdocksprep1hold_cellphone',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_cs_walking_stick',
                        Placement = {
                            vec3(0.15, 0.05, -0.03),
                            vec3(0.0, 266.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Walking Stick 2',
            Command = 'walkingstick2',
            Animation = 'lester_base_idle',
            Dictionary = 'missbigscore2aleadinout@bs_2a_2b_int',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_walking_stick',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.08, 0.03, 0.01),
                            vec3(-107.999901, 0.0, -4.600300),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Pride Flag - Rainbow',
            Command = 'pflag',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag1',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 2 - LGBTQ',
            Command = 'pflag2',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag2',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 3 - Bisexual',
            Command = 'pflag3',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag3',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 4 - Lesbian',
            Command = 'pflag4',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag4',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 5 - Pansexual',
            Command = 'pflag5',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag5',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 6 - Transgender',
            Command = 'pflag6',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag6',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 7 - Non Binary',
            Command = 'pflag7',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag7',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 8 - Asexual',
            Command = 'pflag8',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag8',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pride Flag 9 - Straight Ally',
            Command = 'pflag9',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prideflag9',
                        Placement = {
                            vec3(0.08, -0.209, 0.09),
                            vec3(-82.667702, -141.298798, 12.330800),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Puke',
            Command = 'puke',
            Animation = 'trv_puking_leadout',
            Dictionary = 'missheistpaletoscore1leadinout',
            Options = {
                Flags = {
                    Move = true,
                },
                Ptfx = {
                    Asset = 'scr_paletoscore',
                    AttachToProp = false,
                    CanHold = true,
                    Name = 'scr_trev_puke',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Puke 2',
            Command = 'puke2',
            Animation = 'idle',
            Dictionary = 'anim@scripted@ulp_missions@injured_agent@',
            Options = {
                Flags = {
                    Loop = true,
                },
                Ptfx = {
                    Asset = 'scr_paletoscore',
                    AttachToProp = false,
                    CanHold = true,
                    Name = 'scr_trev_puke',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Puke 3',
            Command = 'puke3',
            Animation = 'vomit',
            Dictionary = 'anim@scripted@freemode@throw_up_toilet@male@',
            Options = {
                Flags = {
                    Loop = true,
                },
                Ptfx = {
                    Asset = 'scr_paletoscore',
                    AttachToProp = false,
                    CanHold = true,
                    Name = 'scr_trev_puke',
                    Placement = {
                        vec3(0.0, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'SMS',
            Command = 'phone',
            Animation = 'cellphone_text_read_base',
            Dictionary = 'cellphone@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Papers',
            Command = 'papers',
            Animation = 'static',
            Dictionary = 'missheistdocksprep1hold_cellphone',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'xm3_prop_xm3_papers_01a',
                        Placement = {
                            vec3(0.13, 0.0, 0.04),
                            vec3(-110.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol Car',
            Command = 'patrolcar',
            Animation = 'base',
            Dictionary = 'amb@incar@male@patrol@torch@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, -0.01, -0.01),
                            vec3(0.0, 0.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol Car 2',
            Command = 'patrolcar2',
            Animation = 'idle_d',
            Dictionary = 'amb@incar@male@patrol@torch@idle_b',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, -0.01, -0.01),
                            vec3(0.0, 0.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol Car 3',
            Command = 'patrolcar3',
            Animation = 'idle_a',
            Dictionary = 'amb@incar@male@patrol@torch@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, -0.01, -0.01),
                            vec3(0.0, 0.0, 100.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol - On Foot',
            Command = 'patrolf',
            Animation = 'base',
            Dictionary = 'amb@world_human_security_shine_torch@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol - On Foot 2',
            Command = 'patrolf2',
            Animation = 'idle_e',
            Dictionary = 'amb@world_human_security_shine_torch@male@idle_b',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol - On Foot 3',
            Command = 'patrolf3',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_security_shine_torch@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Patrol - On Foot 4',
            Command = 'patrolf4',
            Animation = 'base',
            Dictionary = 'amb@incar@male@patrol@torch@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_police_torch_02',
                        Placement = {
                            vec3(0.0, -0.001, 0.0),
                            vec3(0.0, 0.0, 90.0),
                        },
                    },
                    {
                        Bone = 60309,
                        Name = 'prop_cs_hand_radio',
                        Placement = {
                            vec3(0.056, 0.047, 0.011),
                            vec3(-43.827332, 164.674698, -7.556900),
                        },
                    },
                },
            },
        },
        {
            Label = 'Phone Call',
            Command = 'phonecall',
            Animation = 'cellphone_call_listen_base',
            Dictionary = 'cellphone@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Phone Call 2',
            Command = 'phonecall2',
            Animation = 'ig_1_girl_on_phone_loop',
            Dictionary = 'random@kidnap_girl',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Porn Magazine',
            Command = 'pornmag',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_porn_mag_02',
                        Placement = {
                            vec3(0.1, -0.036, -0.03),
                            vec3(-86.909599, 179.252701, 13.880400),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 2',
            Command = 'pornmag2',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_cs_magazine',
                        Placement = {
                            vec3(0.08, -0.049, -0.05),
                            vec3(87.936897, -0.429200, -14.392500),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 3',
            Command = 'pornmag3',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_porn_mag_03',
                        Placement = {
                            vec3(0.1, -0.07, -0.02),
                            vec3(-90.0, -180.0, 22.700701),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 4',
            Command = 'pornmag4',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'v_res_tt_pornmag01',
                        Placement = {
                            vec3(-0.02, -0.03, 0.0),
                            vec3(88.986198, 0.203200, -20.001600),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 5',
            Command = 'pornmag5',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'v_res_tt_pornmag02',
                        Placement = {
                            vec3(-0.02, -0.03, 0.0),
                            vec3(88.986198, 0.203200, -20.001600),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 6',
            Command = 'pornmag6',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'v_res_tt_pornmag03',
                        Placement = {
                            vec3(-0.02, -0.03, 0.0),
                            vec3(88.986198, 0.203200, -20.001600),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Porn Magazine 7',
            Command = 'pornmag7',
            Animation = 'base',
            Dictionary = 'amb@world_human_clipboard@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'v_res_tt_pornmag04',
                        Placement = {
                            vec3(-0.02, -0.03, 0.0),
                            vec3(88.986198, 0.203200, -20.001600),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Pot Plant (Small)',
            Command = 'potplant',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'bkr_prop_weed_01_small_01c',
                        Placement = {
                            vec3(0.138, -0.05, 0.23),
                            vec3(-50.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pot Plant (Medium)',
            Command = 'potplant2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'bkr_prop_weed_01_small_01b',
                        Placement = {
                            vec3(0.138, -0.05, 0.23),
                            vec3(-50.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pot Plant (Large)',
            Command = 'potplant3',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'bkr_prop_weed_lrg_01b',
                        Placement = {
                            vec3(0.138, -0.05, 0.23),
                            vec3(-50.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Propose',
            Command = 'propose',
            Animation = 'propose',
            Dictionary = 'ultra@propose',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'ultra_ringcase',
                        Placement = {
                            vec3(0.17, 0.04, -0.055506),
                            vec3(-138.082, 7.06138, -59.7062),
                        },
                    },
                },
            },
        },
        {
            Label = 'Protest',
            Command = 'protest',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_cs_protest_sign_01',
                        Placement = {
                            vec3(0.182, 0.24, 0.06),
                            vec3(-69.377426, 5.914205, -13.957235),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Protest 2 - Pride',
            Command = 'protest2',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'pride_sign_01',
                        Placement = {
                            vec3(0.182, 0.24, 0.06),
                            vec3(-69.377426, 5.914205, -13.957235),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Protest 3 - BLM',
            Command = 'protest3',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'scully_blm',
                        Placement = {
                            vec3(0.182, 0.24, 0.06),
                            vec3(-69.377426, 5.914205, -13.957235),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Protest 4',
            Command = 'protest4',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 58868,
                        Name = 'prop_cs_protest_sign_03',
                        Placement = {
                            vec3(0.25, 0.15, 0.0),
                            vec3(5.00, 0.00, 40.0),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Protest 5',
            Command = 'protest5',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 58868,
                        Name = 'prop_cs_protest_sign_04a',
                        Placement = {
                            vec3(0.25, 0.15, 0.0),
                            vec3(5.00, 0.00, 40.0),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Protest 6',
            Command = 'protest6',
            Animation = 'base',
            Dictionary = 'amb@world_human_bum_freeway@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 58868,
                        Name = 'prop_cs_protest_sign_04b',
                        Placement = {
                            vec3(0.25, 0.15, 0.0),
                            vec3(5.00, 0.00, 40.0),
                        },
                    },
                },
            },
            SocialMovement = true,
        },
        {
            Label = 'Pumpkin',
            Command = 'pump',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_veg_crop_03_pump',
                        Placement = {
                            vec3(0.02, 0.06, -0.12),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pumpkin 2',
            Command = 'pump2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_veg_crop_03_pump',
                        Placement = {
                            vec3(0.01, -0.16, -0.21),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pumpkin 3',
            Command = 'pump3',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'reh_prop_reh_lantern_pk_01a',
                        Placement = {
                            vec3(0.001, 0.066, -0.012),
                            vec3(171.916901, 179.870697, -39.986),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pumpkin 4',
            Command = 'pump4',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'reh_prop_reh_lantern_pk_01b',
                        Placement = {
                            vec3(0.001, 0.066, -0.012),
                            vec3(171.916901, 179.870697, -39.986),
                        },
                    },
                },
            },
        },
        {
            Label = 'Pumpkin 5',
            Command = 'pump5',
            Animation = 'idle',
            Dictionary = 'missfbi4prepp1',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'reh_prop_reh_lantern_pk_01c',
                        Placement = {
                            vec3(0.001, 0.066, -0.012),
                            vec3(171.916901, 179.870697, -39.986),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rake',
            Command = 'rake',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_rake',
                        Placement = {
                            vec3(0.0, 0.0, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rake 2',
            Command = 'rake2',
            Animation = 'idle_b',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_a@idles',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_rake',
                        Placement = {
                            vec3(0.0, 0.0, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rake 3',
            Command = 'rake3',
            Animation = 'base',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_rake',
                        Placement = {
                            vec3(0.0, 0.0, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rake 4',
            Command = 'rake4',
            Animation = 'idle_d',
            Dictionary = 'anim@amb@drug_field_workers@rake@male_b@idles',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_rake',
                        Placement = {
                            vec3(0.0, 0.0, -0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Register',
            Command = 'register',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'v_ret_gc_cashreg',
                        Placement = {
                            vec3(0.138, 0.2, 0.2),
                            vec3(-50.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rose',
            Command = 'rose',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_single_rose',
                        Placement = {
                            vec3(0.13, 0.15, 0.0),
                            vec3(-100.0, 0.0, -20.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rose 2 (Male)',
            Command = 'rose2',
            Animation = 'static',
            Dictionary = 'missheistdocksprep1hold_cellphone',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_single_rose',
                        Placement = {
                            vec3(-0.014, 0.103, 0.062),
                            vec3(-2.932, 4.564, 39.91),
                        },
                    },
                },
            },
        },
        {
            Label = 'Rose 3 (Female)',
            Command = 'rose3',
            Animation = 'static',
            Dictionary = 'missheistdocksprep1hold_cellphone',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_single_rose',
                        Placement = {
                            vec3(-0.014, 0.107, 0.072),
                            vec3(0.0, 0.0, 2.99),
                        },
                    },
                },
            },
        },
        {
            Label = 'Scalpel',
            Command = 'scalpel',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = false,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_scalpel',
                        Placement = {
                            vec3(0.11, 0.03, 0.01),
                            vec3(0.0, 180.0, -70.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Selfie',
            Command = 'selfie',
            Animation = 'idle_a',
            Dictionary = 'anim@mp_player_intuppertake_selfie',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 2',
            Command = 'selfie2',
            Animation = 'peace',
            Dictionary = 'cellphone@self@franklin@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 3',
            Command = 'selfie3',
            Animation = 'west_coast',
            Dictionary = 'cellphone@self@franklin@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 4',
            Command = 'selfie4',
            Animation = 'aggressive_finger',
            Dictionary = 'cellphone@self@trevor@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 5',
            Command = 'selfie5',
            Animation = 'proud_finger',
            Dictionary = 'cellphone@self@trevor@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 6',
            Command = 'selfie6',
            Animation = 'throat_slit',
            Dictionary = 'cellphone@self@trevor@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 7',
            Command = 'selfie7',
            Animation = 'chest_bump',
            Dictionary = 'cellphone@self@franklin@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Selfie 8',
            Command = 'selfie8',
            Animation = 'base',
            Dictionary = 'mirror_selfie@peace_sign',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.17, 0.029900, -0.015900),
                            vec3(-126.268700, -139.905807, 35.620300),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie 9',
            Command = 'selfie9',
            Animation = 'boy',
            Dictionary = 'eagle@boypose04',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.073, 0.022, 0.046),
                            vec3(-142.137405, -92.414200, 33.169102),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Beach Bum',
            Command = 'selfiebbum',
            Animation = 'booty_selfie_clip',
            Dictionary = 'anim@female_beach_booty_selfie',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 26613,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.068, -0.025, 0.034),
                            vec3(-13.429900, 47.228802, -14.958800),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Crouching',
            Command = 'selfiecrouch',
            Animation = 'base',
            Dictionary = 'crouching@taking_selfie',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.158, 0.018, 0.03),
                            vec3(-150.479797, -67.823997, -46.041698),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Crouching 2',
            Command = 'selfiecrouch2',
            Animation = 'girl',
            Dictionary = 'eagle@girlphonepose13',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.067, 0.03, 0.03),
                            vec3(-90.0, 0.0, -25.9),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Crouching 3',
            Command = 'selfiecrouch3',
            Animation = 'insta_selfie_clip',
            Dictionary = 'anim@male_insta_selfie',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.07, 0.01, 0.069),
                            vec3(0.0, 0.0, -150.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Crouching 4',
            Command = 'selfiecrouch4',
            Animation = 'selfie_risque_clip',
            Dictionary = 'anim@female_selfie_risque',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.158, 0.018, 0.03),
                            vec3(-150.479797, -67.823997, -46.041698),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute',
            Command = 'selfiecute',
            Animation = '1foot_selfie_clip',
            Dictionary = 'anim@egirl_1foot_selfie',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 4185,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.029, -0.023, 0.019),
                            vec3(-14.786, 67.803001, 6.182700),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute 2',
            Command = 'selfiecute2',
            Animation = 'girl',
            Dictionary = 'eagle@girlphonepose21',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 4185,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.021, -0.015, 0.011),
                            vec3(-45.893600, 41.837200, -26.641500),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute 3',
            Command = 'selfiecute3',
            Animation = 'freeselfie01',
            Dictionary = 'pupppy@freeselfie01',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 26613,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.038, -0.031, 0.059),
                            vec3(0.0, 0.0, 10.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute 4',
            Command = 'selfiecute4',
            Animation = 'freeselfie02',
            Dictionary = 'pupppy@freeselfie02',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.096, 0.016, 0.042),
                            vec3(-155.351501, -84.482803, 4.755100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute 5',
            Command = 'selfiecute5',
            Animation = 'freeselfie03',
            Dictionary = 'pupppy@freeselfie03',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 26614,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.031, -0.043, 0.072),
                            vec3(0.0, 3.999900, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Cute 6',
            Command = 'selfiecute6',
            Animation = 'heartselfie_clip',
            Dictionary = 'heartselfiemirror@queensisters',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64096,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.039, 0.02, 0.033),
                            vec3(90.0, 180.0, 13.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Floor Instagram',
            Command = 'selfiefloor',
            Animation = 'floor_cute_clip',
            Dictionary = 'anim@selfie_floor_cute',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.093, 0.023, 0.026),
                            vec3(-158.827103, -82.903999, -18.747200),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Hand Bag',
            Command = 'selfiehb',
            Animation = 'selfie_cute_clip',
            Dictionary = 'anim@female_selfie_cute',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_ld_handbag',
                        Placement = {
                            vec3(0.09, -0.019, -0.03),
                            vec3(-112.802299, -171.783096, -56.819500),
                        },
                    },
                    {
                        Bone = 4185,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.02, -0.025, 0.0),
                            vec3(-8.594700, 30.614100, -5.131100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Middle Finger',
            Command = 'selfiefu',
            Animation = 'fuck_you_selfie_clip',
            Dictionary = 'anim@fuck_you_selfie',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.12, 0.022, -0.021),
                            vec3(98.682198, -4.980900, 109.621597),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Middle Finger 2',
            Command = 'selfiefu2',
            Animation = 'mirrorselfie_clip',
            Dictionary = 'fuckyouselfie@queensisters',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64097,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(-0.021, 0.03, -0.003),
                            vec3(-180.0, -180.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Selfie Middle Finger 3',
            Command = 'selfiefu3',
            Animation = 'kilye_clip',
            Dictionary = 'selfiekilye@queensisters',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_dildo_01',
                        Placement = {
                            vec3(0.045, 0.005, -0.015),
                            vec3(92.081001, 1.304900, -2.886300),
                        },
                    },
                    {
                        Bone = 26613,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.065, -0.028, 0.044),
                            vec3(10.680800, 13.752600, 2.645700),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Sexy',
            Command = 'selfiesexy',
            Animation = 'selfie001',
            Dictionary = 'littlespoon@selfie001',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 58870,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.015, 0.023, 0.07),
                            vec3(0.0, 0.0, 170.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Sexy 2',
            Command = 'selfiesexy2',
            Animation = 'selfie002',
            Dictionary = 'littlespoon@selfie002',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64064,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.029, 0.014, 0.049),
                            vec3(174.961594, -149.618698, 8.649100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Sexy 3',
            Command = 'selfiesexy3',
            Animation = 'selfie003',
            Dictionary = 'littlespoon@selfie003',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64064,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.029, 0.014, 0.049),
                            vec3(174.961594, -149.618698, 8.649100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Sexy 4',
            Command = 'selfiesexy4',
            Animation = 'selfie004',
            Dictionary = 'littlespoon@selfie004',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64064,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.029, 0.014, 0.049),
                            vec3(174.961594, -149.618698, 8.649100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Sexy 5',
            Command = 'selfiesexy5',
            Animation = 'selfie005',
            Dictionary = 'littlespoon@selfie005',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 64064,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.029, 0.014, 0.049),
                            vec3(174.961594, -149.618698, 8.649100),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Selfie Thot Instagram',
            Command = 'selfiethot',
            Animation = 'sitting_thot_clip',
            Dictionary = 'anim@sitting_thot',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.103, 0.044, -0.027),
                            vec3(-160.280197, -99.407997, -3.404800),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'Shit',
            Command = 'shit',
            Animation = 'shit_loop_trev',
            Dictionary = 'missfbi3ig_0',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_toilet_roll_01',
                        Placement = {
                            vec3(0.07, -0.02, -0.21),
                            vec3(0.0, 0.0, 0.0),
                        },
                    }
                },
                Ptfx = {
                    Asset = 'scr_amb_chop',
                    AttachToProp = true,
                    Name = 'ent_anim_dog_poo',
                    Placement = {
                        vec3(0.0, 0.0, -0.1),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            NSFW = true,
        },
        {
            Label = 'Shopping Bag',
            Command = 'shopbag',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'vw_prop_casino_shopping_bag_01a',
                        Placement = {
                            vec3(0.24, 0.03, -0.04),
                            vec3(0.0, -90.0, 10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Shopping Bag 2',
            Command = 'shopbag2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_shopping_bags02',
                        Placement = {
                            vec3(0.05, 0.02, 0.0),
                            vec3(178.800003, 91.190002, 9.97),
                        },
                    },
                },
            },
        },
        {
            Label = 'Shopping Bag 3',
            Command = 'shopbag3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_shopping_bag',
                        Placement = {
                            vec3(0.24, 0.03, -0.04),
                            vec3(0.0, -90.0, 10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Sit TV',
            Command = 'sittv',
            Animation = 'tv_part_one_loop',
            Dictionary = 'anim@heists@heist_safehouse_intro@variations@male@tv',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'v_res_tre_remote',
                        Placement = {
                            vec3(0.099, 0.017, -0.03),
                            vec3(-64.760002, -109.543999, 18.716999),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 2',
            Command = 'smoke2',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_aa_smoke@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_ciggy_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 3',
            Command = 'smoke3',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_aa_smoke@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_ciggy_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 4',
            Command = 'smoke4',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_smoking@female@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_ciggy_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 5',
            Command = 'smoke5',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_aa_smoke@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bzzz_cigarpack_cig002',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 6',
            Command = 'smoke6',
            Animation = 'enter',
            Dictionary = 'amb@world_human_smoking@male@male_a@enter',
            Options = {
                Duration = 2600,
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 47419,
                        Name = 'bzzz_cigarpack_cig001',
                        Placement = {
                            vec3(0.01, 0.0, 0.0),
                            vec3(50.0, 0.0, -80.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Smoke 7',
            Command = 'smoke7',
            Animation = 'idle_b',
            Dictionary = 'amb@world_human_aa_smoke@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bzzz_cigarpack_cig003',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'SMS',
            Command = 'sms',
            Animation = 'cellphone_text_read_base',
            Dictionary = 'cellphone@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'SMS 2',
            Command = 'sms2',
            Animation = 'cellphone_text_read_base',
            Dictionary = 'cellphone@female',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(0.0, 0.0, 0.030100),
                            vec3(0.0, 0.0, 0.0),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'SMS 3',
            Command = 'sms3',
            Animation = 'cellphone_email_read_base',
            Dictionary = 'cellphone@female',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(-0.019, -0.024, 0.03),
                            vec3(18.99, -72.07, 6.39),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'SMS 4',
            Command = 'sms4',
            Animation = 'cellphone_text_read_base_cover_low',
            Dictionary = 'cellphone@female',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(-0.019, -0.025, 0.04),
                            vec3(19.17, -78.5, 14.97),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
                Ptfx = {
                    Asset = 'scr_tn_meet',
                    AttachToProp = true,
                    Name = 'scr_tn_meet_phone_camera_flash',
                    Placement = {
                        vec3(-0.015, 0.0, 0.041),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
        },
        {
            Label = 'SMS 6',
            Command = 'sms5',
            Animation = 'static',
            Dictionary = 'amb@code_human_wander_texting_fat@male@base',
            Options = {
                Flags = {
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_phone_ing',
                        Placement = {
                            vec3(-0.02, -0.01, 0.0),
                            vec3(2.309, 88.845001, 29.979),
                        },
                        Variant = 0,
                        Variations = {0, 1, 2, 3, 4, 5, 6, 7},
                    },
                },
            },
        },
        {
            Label = 'Soda',
            Command = 'soda',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_drinking@coffee@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_ecola_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 130.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Stop Sign',
            Command = 'ssign',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_01a',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Yield Sign',
            Command = 'ssign2',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_02a',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Hospital Sign',
            Command = 'ssign3',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_03d',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Parking Sign',
            Command = 'ssign4',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_04a',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Parking Sign 2',
            Command = 'ssign5',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_04w',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Pedestrian Sign',
            Command = 'ssign6',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_05a',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Street Sign',
            Command = 'ssign7',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_05t',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Freeway Sign',
            Command = 'ssign8',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_freewayentrance',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal Stop Sign Snow',
            Command = 'ssign9',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_snow_sign_road_01a',
                        Placement = {
                            vec3(-0.139, -0.987, 0.43),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal SpeedLimit 15 Sign',
            Command = 'ssign10',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_06c',
                        Placement = {
                            vec3(0., -0.06, 0.1),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal SpeedLimit 35 Sign',
            Command = 'ssign11',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_06e',
                        Placement = {
                            vec3(0., -0.06, 0.1),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal SpeedLimit 60 Sign',
            Command = 'ssign12',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_sign_road_06g',
                        Placement = {
                            vec3(0., -0.06, 0.1),
                            vec3(-67.331528, 145.062790, -4.431889),
                        },
                    },
                },
            },
        },
        {
            Label = 'Steal TV',
            Command = 'stealtv',
            Animation = 'beachanim_surf_clip',
            Dictionary = 'beachanims@molly',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28252,
                        Name = 'xs_prop_arena_screen_tv_01',
                        Placement = {
                            vec3(0.26, 0.11, -0.14),
                            vec3(96.162003, 168.906906, 84.240196),
                        },
                    },
                },
            },
        },
        {
            Label = 'Stick Butterfly',
            Command = 'stickbutterfly',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_stickbfly',
                        Placement = {
                            vec3(0.11, 0.01, 0.01),
                            vec3(-90.00, 90.00, -25.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Stick Hummingbird',
            Command = 'stickhummingbird',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_stickhbird',
                        Placement = {
                            vec3(0.11, 0.01, 0.01),
                            vec3(-90.00, 90.00, -25.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Suitcase',
            Command = 'suitcase',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_ld_suitcase_01',
                        Placement = {
                            vec3(0.35, 0.0, 0.0),
                            vec3(0.0, 266.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Suitcase 2',
            Command = 'suitcase2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_security_case_01',
                        Placement = {
                            vec3(0.13, 0.0, -0.01),
                            vec3(0.0, 280.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Suitcase 3',
            Command = 'suitcase3',
            Animation = 'idle',
            Dictionary = 'anim@heists@narcotics@trash',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_suitcase_01c',
                        Placement = {
                            vec3(0.11, -0.21, -0.43),
                            vec3(-11.8999, 0.0, 30.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Surf Board',
            Command = 'surfboard',
            Animation = 'beachanim_surf_clip',
            Dictionary = 'beachanims@molly',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28252,
                        Name = 'prop_surf_board_01',
                        Placement = {
                            vec3(0.102, -0.146, -0.116),
                            vec3(-85.541603, 176.144608, -2.15),
                        },
                    },
                },
            },
        },
        {
            Label = 'Syringe',
            Command = 'syringe',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_syringe_01',
                        Placement = {
                            vec3(0.11, 0.03, 0.01),
                            vec3(90.0, 0.0, -50.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tablet',
            Command = 'tablet',
            Animation = 'base',
            Dictionary = 'amb@world_human_tourist_map@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_tablet',
                        Placement = {
                            vec3(0.0, -0.03, 0.0),
                            vec3(20.0, -90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tablet 2',
            Command = 'tablet2',
            Animation = 'idle_a',
            Dictionary = 'amb@code_human_in_bus_passenger_idles@female@tablet@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_tablet',
                        Placement = {
                            vec3(-0.05, 0.0, 0.0),
                            vec3(0.0, -90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Shake Can Male',
            Command = 'tag',
            Animation = 'shake_can_male',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Shake Can Female',
            Command = 'tag2',
            Animation = 'shake_can_female',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@heeled@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Male 1',
            Command = 'tag3',
            Animation = 'spray_can_var_01_male',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Male 2',
            Command = 'tag4',
            Animation = 'spray_can_var_02_male',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Female 1',
            Command = 'tag5',
            Animation = 'spray_can_var_01_female',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@heeled@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tagging Female 2',
            Command = 'tag6',
            Animation = 'spray_can_var_02_female',
            Dictionary = 'anim@scripted@freemode@postertag@graffiti_spray@heeled@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_spray_can',
                        Placement = {
                            vec3(0.0, 0.0, 0.07),
                            vec3(0.001736, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Teddy',
            Command = 'teddy',
            Animation = 'mp_m_waremech_01_dual-0',
            Dictionary = 'impexp_int-0',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 24817,
                        Name = 'v_ilev_mr_rasberryclean',
                        Placement = {
                            vec3(-0.2, 0.46, -0.016),
                            vec3(-180.0, -90.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tennis Play',
            Command = 'tennisplay',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'prop_tennis_bag_01',
                        Placement = {
                            vec3(0.27, 0.0, 0.0),
                            vec3(91.0, 0.0, -82.999992),
                        },
                    },
                    {
                        Bone = 60309,
                        Name = 'prop_tennis_rack_01',
                        Placement = {
                            vec3(0.08, 0.03, 0.0),
                            vec3(-130.290726, 3.878232, 6.588224),
                        },
                    },
                },
            },
        },
        {
            Label = 'Tire',
            Command = 'tire',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_wheel_tyre',
                        Placement = {
                            vec3(-0.05, 0.16, 0.32),
                            vec3(-130.0, -55.0, 150.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Toolbox',
            Command = 'toolbox',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_tool_box_04',
                        Placement = {
                            vec3(0.396, 0.041, -0.003),
                            vec3(-90.0, 0.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Toolbox 2',
            Command = 'toolbox2',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'imp_prop_tool_box_01a',
                        Placement = {
                            vec3(0.37, 0.02, 0.0),
                            vec3(90.0, 0.0, -90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Toolbox 3',
            Command = 'toolbox3',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'xm3_prop_xm3_tool_box_01a',
                        Placement = {
                            vec3(0.37, 0.02, 0.0),
                            vec3(90.0, 0.0, -90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Toolbox 4',
            Command = 'toolbox4',
            Animation = 'idle',
            Dictionary = 'move_weapon@jerrycan@generic',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'xm3_prop_xm3_tool_box_02a',
                        Placement = {
                            vec3(0.37, 0.02, 0.0),
                            vec3(90.0, 0.0, -90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Umbrella',
            Command = 'umbrella',
            Animation = 'base',
            Dictionary = 'amb@world_human_drinking@coffee@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'p_amb_brolly_01',
                        Placement = {
                            vec3(0.15, 0.005, 0.0),
                            vec3(87.0, -20.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Umbrella 2',
            Command = 'umbrella2',
            Animation = 'base_club_shoulder',
            Dictionary = 'rcmnigel1d',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'p_amb_brolly_01',
                        Placement = {
                            vec3(0.07, 0.01, 0.11),
                            vec3(2.340239, -150.960571, 57.337490),
                        },
                    },
                },
            },
        },
        {
            Label = 'Umbrella 3',
            Command = 'umbrella3',
            Animation = 'animation_female_12_clip',
            Dictionary = 'luxurymods@animation_female_12',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'p_amb_brolly_01',
                        Placement = {
                            vec3(0.15, 0.005, 0.0),
                            vec3(87.0, -20.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Umbrella 4',
            Command = 'umbrella4',
            Animation = 'raini_clip',
            Dictionary = 'raini@sharror',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = 'p_amb_brolly_01',
                        Placement = {
                            vec3(0.15, 0.005, 0.0),
                            vec3(87.0, -20.0, 180.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Vape',
            Command = 'vape',
            Animation = 'base',
            Dictionary = 'amb@world_human_smoking@male@male_b@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_battle_vape_01',
                        Placement = {
                            vec3(-0.029, 0.007, -0.005),
                            vec3(91.0, 270.0, -360.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'core',
                    CanHold = true,
                    Color = {R = 1.0, G = 1.0, B = 1.0, A = 1.0},
                    Name = 'exp_grd_bzgas_smoke',
                    Placement = {
                        vec3(-0.01, 0.06, 0.66),
                        vec3(0.0, 0.0, 0.0),
                        2.0,
                    },
                    Wait = 0,
                },
            },
        },
        {
            Label = 'Vlog',
            Command = 'vlog',
            Animation = 'base',
            Dictionary = 'amb@world_human_mobile_film_shocking@male@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_ing_camera_01',
                        Placement = {
                            vec3(-0.07, -0.01, 0.00),
                            vec3(0.00, 0.00, 0.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Vlog 2',
            Command = 'vlog2',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_ing_camera_01',
                        Placement = {
                            vec3(0.15, 0.03, 0.10),
                            vec3(280.00, 110.00, -11.00),
                        },
                    },
                },
            },
        },
        {
            Label = 'Vulture',
            Command = 'vulture',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'ch_prop_arcade_gun_bird_01a',
                        Placement = {
                            vec3(0.89, -1.95, 0.55),
                            vec3(-65.00, 180.00, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Watch Stripper 2',
            Command = 'watchstripper2',
            Animation = 'base',
            Dictionary = 'amb@world_human_strip_watch_stand@male_c@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_beer_am',
                        Placement = {
                            vec3(0.088, -0.136, 0.145),
                            vec3(-102.962402, 81.709801, -39.273399),
                        },
                    },
                },
            },
            NSFW = true,
        },
        {
            Label = 'Water',
            Command = 'water',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_drinking@coffee@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_club_water_bottle',
                        Placement = {
                            vec3(0.0, 0.0, -0.09),
                            vec3(0.0, 0.0, 130.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Weed Brick',
            Command = 'weedbrick',
            Animation = 'mp_m_waremech_01_dual-0',
            Dictionary = 'impexp_int-0',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'prop_weed_block_01',
                        Placement = {
                            vec3(0.1, 0.1, 0.05),
                            vec3(0.0, -90.0, 90.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Weed Brick BIG',
            Command = 'weedbrick2',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 60309,
                        Name = 'bkr_prop_weed_bigbag_01a',
                        Placement = {
                            vec3(0.158, -0.05, 0.23),
                            vec3(-50.0, 290.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Weed Bucket',
            Command = 'weedbucket',
            Animation = 'idle',
            Dictionary = 'anim@heists@box_carry@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'bkr_prop_weed_bucket_open_01a',
                        Placement = {
                            vec3(0.0, -0.1, -0.18),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Weights',
            Command = 'weights',
            Animation = 'base',
            Dictionary = 'amb@world_human_muscle_free_weights@male@barbell@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_curl_bar_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Weights 2',
            Command = 'weights2',
            Animation = 'idle_d',
            Dictionary = 'amb@world_human_muscle_free_weights@male@barbell@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_curl_bar_01',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Whiskey',
            Command = 'whiskey',
            Animation = 'idle_c',
            Dictionary = 'amb@world_human_drinking@coffee@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_drink_whisky',
                        Placement = {
                            vec3(0.01, -0.01, -0.06),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Whiskey Bottle',
            Command = 'whiskeyb',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_drinking@beer@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_battle_whiskey_bottle_2_s',
                        Placement = {
                            vec3(0.0, 0.0, 0.05),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Whiskey Bottle 2',
            Command = 'whiskeyb2',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_drinking@beer@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_battle_whiskey_bottle_2_s',
                        Placement = {
                            vec3(0.0, 0.0, 0.05),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Whiskey Bottle 3',
            Command = 'whiskeyb3',
            Animation = 'idle_a',
            Dictionary = 'amb@world_human_drinking@beer@male@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'ba_prop_battle_whiskey_bottle_2_s',
                        Placement = {
                            vec3(0.0, 0.0, 0.05),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Wine',
            Command = 'wine',
            Animation = 'ped_a_enter_loop',
            Dictionary = 'anim@heists@humane_labs@finale@keycards',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_drink_redwine',
                        Placement = {
                            vec3(0.1, -0.03, 0.03),
                            vec3(-100.0, 0.0, -10.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Wine 2 - Bottle',
            Command = 'wine2',
            Animation = 'idle_e',
            Dictionary = 'amb@world_human_drinking@beer@female@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_wine_rose',
                        Placement = {
                            vec3(-0.0, 0.04, -0.19),
                            vec3(10.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Wine 3 - Bottle',
            Command = 'wine3',
            Animation = 'idle_e',
            Dictionary = 'amb@world_human_drinking@beer@female@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_wine_rose',
                        Placement = {
                            vec3(-0.0, 0.04, -0.19),
                            vec3(10.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Walkie Talkie',
            Command = 'wt',
            Animation = 'cellphone_text_read_base',
            Dictionary = 'cellphone@',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 28422,
                        Name = 'prop_cs_hand_radio',
                        Placement = {
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
        },
        {
            Label = 'Walkie Talkie 2',
            Command = 'wt2',
            Animation = 'walkie_talkie',
            Dictionary = 'ultra@walkie_talkie',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 18905,
                        Name = 'prop_cs_hand_radio',
                        Placement = {
                            vec3(0.14, 0.03, 0.03),
                            vec3(-105.877, -10.943200, -33.721200),
                        },
                    },
                },
            },
        }
    }
}