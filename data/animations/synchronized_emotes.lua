return {
    {
        Label = 'Baseball',
        Command = 'sbaseball',
        Animation = 'baseball_a_player_a',
        Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        Options = {
            Shared = {
                OtherAnimation = 'sbaseballthrow',
            },
        },
    },
    {
        Label = 'Baseball Throw',
        Command = 'sbaseballthrow',
        Animation = 'baseball_a_player_b',
        Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        Options = {
            Shared = {
                OtherAnimation = 'sbaseball',
            },
        },
    },
    {
        Label = 'Bro',
        Command = 'sbro',
        Animation = 'hugs_guy_a',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Shared = {
                FrontOffset = 1.14,
                OtherAnimation = 'sbro2',
            },
        },
    },
    {
        Label = 'Bro 2',
        Command = 'sbro2',
        Animation = 'hugs_guy_b',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Shared = {
                FrontOffset = 1.14,
                OtherAnimation = 'sbro',
            },
        },
    },
    {
        Label = 'Carry',
        Command = 'scarry',
        Animation = 'fin_c2_mcs_1_camman',
        Dictionary = 'missfinale_c2mcs_1',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'scarried',
            },
        },
        SkipRequest = true
    },
    {
        Label = 'Carried',
        Command = 'scarried',
        Animation = 'firemans_carry',
        Dictionary = 'nm',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 40269,
                OtherAnimation = 'scarry',
                Placement = {
                    vector3(-0.140000, 0.150000, 0.140000),
                    vector3(0.000000, -59.000000, -4.500000),
                },
            },
        },
    },
    {
        Label = 'Carry 2',
        Command = 'carry2',
        Animation = 'idle',
        Dictionary = 'anim@heists@box_carry@',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                Bone = 40269,
                OtherAnimation = 'scarried2',
            },
        },
        SkipRequest = true
    },
    {
        Label = 'Carried 2',
        Command = 'scarried2',
        Animation = 'base',
        Dictionary = 'amb@code_human_in_car_idles@generic@ps@base',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 28252,
                OtherAnimation = 'carry2',
                Placement = {
                    vector3(0.350000, 0.150000, -0.150000),
                    vector3(-42.500000, -22.500000, 22.500000),
                },
            },
        },
    },
    {
        Label = 'Carry 3',
        Command = 'scarry3',
        Animation = 'couplepose1cmg_clip',
        Dictionary = 'couplepose1cmg@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'carried3',
            },
        },
    },
    {
        Label = 'Carried 3',
        Command = 'carried3',
        Animation = 'couplepose2cmg_clip',
        Dictionary = 'couplepose2cmg@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'scarry3',
                Placement = {
                    vector3(0.010000, 0.344000, -0.010000),
                    vector3(180.000000, 180.000000, -1.999900),
                },
            },
        },
    },
    {
        Label = 'Carry Big Dog',
        Command = 'scbdog',
        Animation = 'idle',
        Dictionary = 'anim@heists@box_carry@',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'scbdog2',
            },
        },
    },
    {
        Label = 'Big Dog Carried',
        Command = 'scbdog2',
        Animation = 'sleep_in_kennel',
        Dictionary = 'creatures@rottweiler@amb@sleep_in_kennel@',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                OtherAnimation = 'scbdog',
                Placement = {
                    vector3(-0.100000, 0.650000, 0.430000),
                    vector3(0.000000, 0.000000, -100.000000),
                },
            },
        },
    },
    {
        Label = 'Couple Drinking (Wine Glasses)',
        Command = 'scoupleanim',
        Animation = 'action_var_01_bank_manager',
        Dictionary = 'anim@scripted@robbery@tun_prep_uni_ig1_couple@',
        Options = {
            Flags = {
                Loop = true,
            },
            Props = {
                {
                    Bone = 60309,
                    Name = 'p_wine_glass_s',
                    Placement = {
                        vector3(-0.050000, -0.010000, -0.170000),
                        vector3(0.000000, 0.000000, 0.000000),
                    },
                },
            },
            Shared = {
                OtherAnimation = 'scoupleanim2',
            },
        },
    },
    {
        Label = 'Couple Drinking F (Wine Glasses)',
        Command = 'scoupleanim2',
        Animation = 'action_var_01_female',
        Dictionary = 'anim@scripted@robbery@tun_prep_uni_ig1_couple@',
        Options = {
            Flags = {
                Loop = true,
            },
            Props = {
                {
                    Bone = 28422,
                    Name = 'p_wine_glass_s',
                    Placement = {
                        vector3(0.000000, 0.000000, 0.000000),
                        vector3(0.000000, 0.000000, 0.000000),
                    },
                },
            },
            Shared = {
                FrontOffset = 0.11,
                OtherAnimation = 'scoupleanim',
                SideOffset = -0.04125,
            },
        },
    },
    {
        Label = 'Give CPR',
        Command = 'scprs',
        Animation = 'cpr_pumpchest',
        Dictionary = 'mini@cpr@char_a@cpr_str',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'scprs2',
            },
        },
    },
    {
        Label = 'Get CPR',
        Command = 'scprs2',
        Animation = 'cpr_pumpchest',
        Dictionary = 'mini@cpr@char_b@cpr_str',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                OtherAnimation = 'scprs',
                Placement = {
                    vector3(0.350000, 0.800000, 0.000000),
                    vector3(0.000000, 0.000000, 270.000000),
                },
            },
        },
    },
    {
        Label = 'Give CPR 2',
        Command = 'scprs3',
        Animation = 'cpr_loop_paramedic',
        Dictionary = 'missheistfbi3b_ig8_2',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'scprs4',
            },
        },
    },
    {
        Label = 'Get CPR 2',
        Command = 'scprs4',
        Animation = 'cpr_loop_victim',
        Dictionary = 'missheistfbi3b_ig8_2',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                OtherAnimation = 'scprs3',
                Placement = {
                    vector3(0.350000, 0.650000, 0.000000),
                    vector3(0.000000, 0.000000, 270.000000),
                },
            },
        },
    },
    {
        Label = 'Give',
        Command = 'sgive',
        Animation = 'givetake1_a',
        Dictionary = 'mp_common',
        Options = {
            Duration = 2000,
            Flags = {
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sgive2',
            },
        },
    },
    {
        Label = 'Give 2',
        Command = 'sgive2',
        Animation = 'givetake1_b',
        Dictionary = 'mp_common',
        Options = {
            Duration = 2000,
            Flags = {
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sgive',
            },
        },
    },
    {
        Label = 'Give Blowjob',
        Command = 'sgiveblowjob',
        Animation = 'pimpsex_hooker',
        Dictionary = 'misscarsteal2pimpsex',
        Options = {
            Duration = 30000,
            Shared = {
                FrontOffset = 0.63,
                OtherAnimation = 'sreceiveblowjob',
            },
        },
        NSFW = true,
    },
    {
        Label = 'Handshake',
        Command = 'shandshake',
        Animation = 'handshake_guy_a',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Duration = 3000,
            Flags = {
                Move = true,
            },
            Shared = {
                FrontOffset = 0.9,
                OtherAnimation = 'shandshake2',
            },
        },
    },
    {
        Label = 'Handshake 2',
        Command = 'shandshake2',
        Animation = 'handshake_guy_b',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Duration = 3000,
            Flags = {
                Move = true,
            },
            Shared = {
                OtherAnimation = 'shandshake',
            },
        },
    },
    {
        Label = 'Headbutt',
        Command = 'sheadbutt',
        Animation = 'plyr_takedown_front_headbutt',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'sheadbutted',
            },
        },
    },
    {
        Label = 'Headbutted',
        Command = 'sheadbutted',
        Animation = 'victim_takedown_front_headbutt',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'sheadbutt',
            },
        },
    },
    {
        Label = 'Hug Pose Tippy Toes',
        Command = 'hugtip',
        Animation = 'friendship007',
        Dictionary = 'littlespoon@friendship007',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'hugtip2',
            },
        },
    },
    {
        Label = 'Hug Pose Tippy Toes 2',
        Command = 'hugtip2',
        Animation = 'friendship008',
        Dictionary = 'littlespoon@friendship008',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'hugtip',
            },
        },
    },
    {
        Label = 'Take hostage',
        Command = 'shostage',
        Animation = 'perp_idle',
        Dictionary = 'anim@gangops@hostage@',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'shostage2',
            },
        },
    },
    {
        Label = 'Be hostage',
        Command = 'shostage2',
        Animation = 'victim_idle',
        Dictionary = 'anim@gangops@hostage@',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                OtherAnimation = 'shostage',
                Placement = {
                    vector3(-0.300000, 0.100000, 0.000000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
            },
        },
    },
    {
        Label = 'Hug',
        Command = 'shug',
        Animation = 'kisses_guy_a',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Duration = 5000,
            Shared = {
                FrontOffset = 1.05,
                OtherAnimation = 'shug2',
            },
        },
    },
    {
        Label = 'Hug 2',
        Command = 'shug2',
        Animation = 'kisses_guy_b',
        Dictionary = 'mp_ped_interaction',
        Options = {
            Duration = 5000,
            Shared = {
                FrontOffset = 1.18,
                OtherAnimation = 'shug',
            },
        },
    },
    {
        Label = 'Hug Romantic 1',
        Command = 'shug3',
        Animation = 'chad_armsaround_chad',
        Dictionary = 'misscarsteal2chad_goodbye',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                FrontOffset = 0.52,
                OtherAnimation = 'shug4',
                SideOffset = -0.05,
            },
        },
    },
    {
        Label = 'Hug Romantic 2',
        Command = 'shug4',
        Animation = 'chad_armsaround_girl',
        Dictionary = 'misscarsteal2chad_goodbye',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                FrontOffset = 0.52,
                OtherAnimation = 'shug3',
                SideOffset = -0.05,
            },
        },
    },
    {
        Label = 'Kiss',
        Command = 'skiss',
        Animation = 'cs_lestercrest_3_dual-20',
        Dictionary = 'hs3_ext-20',
        Options = {
            Duration = 10000,
            Shared = {
                FrontOffset = 0.08,
                OtherAnimation = 'skiss2',
            },
        },
    },
    {
        Label = 'Kiss 2',
        Command = 'skiss2',
        Animation = 'csb_georginacheng_dual-20',
        Dictionary = 'hs3_ext-20',
        Options = {
            Duration = 10000,
            Shared = {
                FrontOffset = 0.08,
                OtherAnimation = 'skiss',
            },
        },
    },
    {
        Label = 'Kiss 3',
        Command = 'skiss3',
        Animation = 'cs_lestercrest_3_dual-19',
        Dictionary = 'hs3_ext-19',
        Options = {
            Duration = 10000,
            Shared = {
                FrontOffset = 0.08,
                OtherAnimation = 'skiss4',
            },
        },
    },
    {
        Label = 'Kiss 4',
        Command = 'skiss4',
        Animation = 'csb_georginacheng_dual-19',
        Dictionary = 'hs3_ext-19',
        Options = {
            Duration = 10000,
            Shared = {
                FrontOffset = 0.08,
                OtherAnimation = 'skiss3',
            },
        },
    },
    {
        Label = 'Lift Me',
        Command = 'sliftme',
        Animation = 'couplepose1pack1anim2_clip',
        Dictionary = 'couplepose1pack1anim2@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'sliftme2',
            },
        },
    },
    {
        Label = 'Lift Me 2',
        Command = 'sliftme2',
        Animation = 'couplepose1pack1anim1_clip',
        Dictionary = 'couplepose1pack1anim1@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'sliftme',
                Placement = {
                    vector3(0.002000, 0.287000, 0.250000),
                    vector3(0.000000, 0.000000, 180.000000),
                },
            },
        },
    },
    {
        Label = 'Lift Me 3',
        Command = 'sliftme3',
        Animation = 'couplepose2pack1anim2_clip',
        Dictionary = 'couplepose2pack1anim2@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'sliftme4',
            },
        },
    },
    {
        Label = 'Lift Me 4',
        Command = 'sliftme4',
        Animation = 'couplepose2pack1anim1_clip',
        Dictionary = 'couplepose2pack1anim1@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'sliftme3',
                Placement = {
                    vector3(0.010000, 0.480000, 0.530000),
                    vector3(0.000000, 0.000000, 180.000000),
                },
            },
        },
    },
    {
        Label = 'Lift Me 5',
        Command = 'sliftme5',
        Animation = 'couplepose3pack1anim2_clip',
        Dictionary = 'couplepose3pack1anim2@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                OtherAnimation = 'sliftme6',
            },
        },
    },
    {
        Label = 'Lift Me 6',
        Command = 'sliftme6',
        Animation = 'couplepose3pack1anim1_clip',
        Dictionary = 'couplepose3pack1anim1@animation',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'sliftme5',
                Placement = {
                    vector3(-0.212000, -0.540000, -0.100000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
            },
        },
    },
    {
        Label = 'Piggy Back',
        Command = 'spback',
        Animation = 'mxclip_a',
        Dictionary = 'mx@piggypack_a',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'spback2',
            },
        },
    },
    {
        Label = 'Piggy Back 2',
        Command = 'spback2',
        Animation = 'mxanim_b',
        Dictionary = 'mx@piggypack_b',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'spback',
                Placement = {
                    vector3(0.020000, -0.439900, 0.420000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
            },
        },
    },
    {
        Label = 'Piggy Back 3',
        Command = 'spback3',
        Animation = 'piggyback_c_player_a',
        Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'spback2',
            },
        },
    },
    {
        Label = 'Piggy Back 4',
        Command = 'spback4',
        Animation = 'piggyback_c_player_b',
        Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                Attach = true,
                Bone = 0,
                OtherAnimation = 'spback',
                Placement = {
                    vector3(0.000000, -0.700000, 0.400000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
            },
        },
    },
    {
        Label = 'Punch',
        Command = 'spunch',
        Animation = 'plyr_takedown_rear_lefthook',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'spunched',
            },
        },
    },
    {
        Label = 'Punched',
        Command = 'spunched',
        Animation = 'victim_takedown_front_cross_r',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'spunch',
            },
        },
    },
    {
        Label = 'Receive Blowjob',
        Command = 'sreceiveblowjob',
        Animation = 'pimpsex_punter',
        Dictionary = 'misscarsteal2pimpsex',
        Options = {
            Duration = 30000,
            Shared = {
                FrontOffset = 0.63,
                OtherAnimation = 'sgiveblowjob',
            },
        },
        NSFW = true,
    },
    {
        Label = 'Search',
        Command = 'ssearch',
        Animation = 'police',
        Dictionary = 'custom@police',
        Options = {
            Flags = {
                Move = true,
            },
            Shared = {
                OtherAnimation = 'ssearch2',
            },
        },
    },
    {
        Label = 'Be searched',
        Command = 'ssearch2',
        Animation = 'a2_pose',
        Dictionary = 'missfam5_yoga',
        Options = {
            Flags = {
                Move = true,
            },
            Shared = {
                Attach = true,
                OtherAnimation = 'ssearch',
                Placement = {
                    vector3(0.000000, 0.500000, 0.000000),
                    vector3(0.000000, 0.000000, 0.000000),
                },
            },
        },
    },
    {
        Label = 'Slap',
        Command = 'sslap',
        Animation = 'plyr_takedown_front_slap',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Duration = 2000,
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sslapped',
            },
        },
    },
    {
        Label = 'Slap 2',
        Command = 'sslap2',
        Animation = 'plyr_takedown_front_backslap',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Duration = 2000,
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sslapped2',
            },
        },
    },
    {
        Label = 'Slapped',
        Command = 'sslapped',
        Animation = 'victim_takedown_front_slap',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'sslap',
            },
        },
    },
    {
        Label = 'Slapped 2',
        Command = 'sslapped2',
        Animation = 'victim_takedown_front_backslap',
        Dictionary = 'melee@unarmed@streamed_variations',
        Options = {
            Shared = {
                OtherAnimation = 'sslap2',
            },
        },
    },
    {
        Label = 'Stick Up',
        Command = 'sstickup',
        Animation = 'biker_02_stickup_loop',
        Dictionary = 'random@countryside_gang_fight',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sstickupscared',
            },
        },
    },
    {
        Label = 'Stickup Scared',
        Command = 'sstickupscared',
        Animation = 'handsup_base',
        Dictionary = 'missminuteman_1ig_2',
        Options = {
            Flags = {
                Loop = true,
                Move = true,
            },
            Shared = {
                OtherAnimation = 'sstickup',
            },
        },
    },
    {
        Label = 'Street Sex Female',
        Command = 'sstreetsexfemale',
        Animation = 'shagloop_hooker',
        Dictionary = 'misscarsteal2pimpsex',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                FrontOffset = 0.5,
                OtherAnimation = 'sstreetsexmale',
            },
        },
        NSFW = true,
    },
    {
        Label = 'Street Sex Male',
        Command = 'sstreetsexmale',
        Animation = 'shagloop_pimp',
        Dictionary = 'misscarsteal2pimpsex',
        Options = {
            Flags = {
                Loop = true,
            },
            Shared = {
                FrontOffset = 0.5,
                OtherAnimation = 'sstreetsexfemale',
            },
        },
        NSFW = true,
    },
}

