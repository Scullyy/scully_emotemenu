return {
    name = 'Synchronized Emotes',
    icon = 'fa-solid fa-people-carry',
    options = {
        {
            Label = 'Baseball',
            Command = 'sbaseball',
            Animation = 'baseball_a_player_a',
            Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
            Options = {
                Shared = {
                    OtherEmote = 'sbaseballthrow',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Baseball Throw',
            Command = 'sbaseballthrow',
            Animation = 'baseball_a_player_b',
            Dictionary = 'anim@arena@celeb@flat@paired@no_props@',
            Options = {
                Shared = {
                    OtherEmote = 'sbaseball',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Bro',
            Command = 'sbro',
            Animation = 'hugs_guy_a',
            Dictionary = 'mp_ped_interaction',
            Options = {
                Shared = {
                    FrontOffset = 1.14,
                    OtherEmote = 'sbro2',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Bro 2',
            Command = 'sbro2',
            Animation = 'hugs_guy_b',
            Dictionary = 'mp_ped_interaction',
            Options = {
                Shared = {
                    FrontOffset = 1.14,
                    OtherEmote = 'sbro',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scarried',
                },
            },
            SkipRequest = true,
            Synchronized = true
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
                    OtherEmote = 'scarry',
                    Placement = {
                        vec3(-0.14, 0.15, 0.14),
                        vec3(0.0, -59.0, -4.5),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scarried2',
                },
            },
            SkipRequest = true,
            Synchronized = true
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
                    OtherEmote = 'carry2',
                    Placement = {
                        vec3(0.35, 0.15, -0.15),
                        vec3(-42.5, -22.5, 22.5),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'carried3',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scarry3',
                    Placement = {
                        vec3(0.01, 0.344, -0.01),
                        vec3(180.0, 180.0, -1.999900),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scbdog2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scbdog',
                    Placement = {
                        vec3(-0.1, 0.65, 0.43),
                        vec3(0.0, 0.0, -100.0),
                    },
                },
            },
            Synchronized = true
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
                            vec3(-0.05, -0.01, -0.17),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Shared = {
                    OtherEmote = 'scoupleanim2',
                },
            },
            Synchronized = true
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
                            vec3(0.0, 0.0, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Shared = {
                    FrontOffset = 0.11,
                    OtherEmote = 'scoupleanim',
                    SideOffset = -0.04125,
                },
            },
            Synchronized = true
        },
        {
            Label = 'Give CPR',
            Command = 'scprs',
            Animation = 'cpr_pumpchest',
            Dictionary = 'mini@cpr@char_a@cpr_str',
            Options = {
                Delay = 250,
                Flags = {
                    Loop = true,
                },
                Shared = {
                    OtherEmote = 'scprs2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scprs',
                    Placement = {
                        vec3(0.35, 0.8, 0.0),
                        vec3(0.0, 0.0, 270.0),
                    },
                },
            },
            Synchronized = true
        },
        {
            Label = 'Give CPR 2',
            Command = 'scprs3',
            Animation = 'cpr_loop_paramedic',
            Dictionary = 'missheistfbi3b_ig8_2',
            Options = {
                Delay = 250,
                Flags = {
                    Loop = true,
                },
                Shared = {
                    OtherEmote = 'scprs4',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'scprs3',
                    Placement = {
                        vec3(0.35, 0.65, 0.0),
                        vec3(0.0, 0.0, 270.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sgive2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sgive',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Give Blowjob',
            Command = 'sgiveblowjob',
            Animation = 'pimpsex_hooker',
            Dictionary = 'misscarsteal2pimpsex',
            Options = {
                Duration = 3,
                Shared = {
                    FrontOffset = 0.63,
                    OtherEmote = 'sreceiveblowjob',
                },
            },
            NSFW = true,
            Synchronized = true
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
                    OtherEmote = 'shandshake2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shandshake',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Headbutt',
            Command = 'sheadbutt',
            Animation = 'plyr_takedown_front_headbutt',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'sheadbutted',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Headbutted',
            Command = 'sheadbutted',
            Animation = 'victim_takedown_front_headbutt',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'sheadbutt',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'hugtip2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'hugtip',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shostage2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shostage',
                    Placement = {
                        vec3(-0.3, 0.1, 0.0),
                        vec3(0.0, 0.0, 0.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shug2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shug',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shug4',
                    SideOffset = -0.05,
                },
            },
            Synchronized = true
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
                    OtherEmote = 'shug3',
                    SideOffset = -0.05,
                },
            },
            Synchronized = true
        },
        {
            Label = 'Kiss',
            Command = 'skiss',
            Animation = 'cs_lestercrest_3_dual-20',
            Dictionary = 'hs3_ext-20',
            Options = {
                Duration = 1,
                Shared = {
                    FrontOffset = 0.08,
                    OtherEmote = 'skiss2',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Kiss 2',
            Command = 'skiss2',
            Animation = 'csb_georginacheng_dual-20',
            Dictionary = 'hs3_ext-20',
            Options = {
                Duration = 1,
                Shared = {
                    FrontOffset = 0.08,
                    OtherEmote = 'skiss',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Kiss 3',
            Command = 'skiss3',
            Animation = 'cs_lestercrest_3_dual-19',
            Dictionary = 'hs3_ext-19',
            Options = {
                Duration = 1,
                Shared = {
                    FrontOffset = 0.08,
                    OtherEmote = 'skiss4',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Kiss 4',
            Command = 'skiss4',
            Animation = 'csb_georginacheng_dual-19',
            Dictionary = 'hs3_ext-19',
            Options = {
                Duration = 1,
                Shared = {
                    FrontOffset = 0.08,
                    OtherEmote = 'skiss3',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme',
                    Placement = {
                        vec3(0.002, 0.287, 0.25),
                        vec3(0.0, 0.0, 180.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme4',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme3',
                    Placement = {
                        vec3(0.01, 0.48, 0.53),
                        vec3(0.0, 0.0, 180.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme6',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sliftme5',
                    Placement = {
                        vec3(-0.212, -0.54, -0.1),
                        vec3(0.0, 0.0, 0.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'spback2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'spback',
                    Placement = {
                        vec3(0.02, -0.439900, 0.42),
                        vec3(0.0, 0.0, 0.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'spback2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'spback',
                    Placement = {
                        vec3(0.0, -0.7, 0.4),
                        vec3(0.0, 0.0, 0.0),
                    },
                },
            },
            Synchronized = true
        },
        {
            Label = 'Punch',
            Command = 'spunch',
            Animation = 'plyr_takedown_rear_lefthook',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'spunched',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Punched',
            Command = 'spunched',
            Animation = 'victim_takedown_front_cross_r',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'spunch',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Receive Blowjob',
            Command = 'sreceiveblowjob',
            Animation = 'pimpsex_punter',
            Dictionary = 'misscarsteal2pimpsex',
            Options = {
                Duration = 3,
                Shared = {
                    FrontOffset = 0.63,
                    OtherEmote = 'sgiveblowjob',
                },
            },
            NSFW = true,
            Synchronized = true
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
                    OtherEmote = 'ssearch2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'ssearch',
                    Placement = {
                        vec3(0.0, 0.5, 0.0),
                        vec3(0.0, 0.0, 0.0),
                    },
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sslapped',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sslapped2',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Slapped',
            Command = 'sslapped',
            Animation = 'victim_takedown_front_slap',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'sslap',
                },
            },
            Synchronized = true
        },
        {
            Label = 'Slapped 2',
            Command = 'sslapped2',
            Animation = 'victim_takedown_front_backslap',
            Dictionary = 'melee@unarmed@streamed_variations',
            Options = {
                Shared = {
                    OtherEmote = 'sslap2',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sstickupscared',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sstickup',
                },
            },
            Synchronized = true
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
                    OtherEmote = 'sstreetsexmale',
                },
            },
            NSFW = true,
            Synchronized = true
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
                    OtherEmote = 'sstreetsexfemale',
                },
            },
            NSFW = true,
            Synchronized = true
        }
    }
}