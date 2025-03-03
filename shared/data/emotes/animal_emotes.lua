return {
    name = 'Animal Emotes',
    icon = 'fa-solid fa-dog',
    options = {
        {
            Label = 'Bark (big dog)',
            Command = 'bdogbark',
            Animation = 'idle_a',
            Dictionary = 'creatures@rottweiler@amb@world_dog_barking@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Beg (big dog)',
            Command = 'bdogbeg',
            Animation = 'beg_loop',
            Dictionary = 'creatures@rottweiler@tricks@',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Beg 2 (big dog)',
            Command = 'bdogbeg2',
            Animation = 'paw_right_loop',
            Dictionary = 'creatures@rottweiler@tricks@',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Dump (big dog)',
            Command = 'bdogdump',
            Animation = 'dump_loop',
            Dictionary = 'creatures@rottweiler@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 51826,
                        Name = 'prop_big_shit_02',
                        Placement = {
                            vec3(0.0, 0.2, -0.46),
                            vec3(0.0, -20.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Glow Stick (big dog)',
            Command = 'bdogglowa',
            Animation = 'nill',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ba_prop_battle_glowstick_01',
                        Placement = {
                            vec3(0.2, 0.0, -0.06),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Glow Stick Sitting (big dog)',
            Command = 'bdogglowb',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ba_prop_battle_glowstick_01',
                        Placement = {
                            vec3(0.2, 0.0, -0.06),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Hump (big dog)',
            Command = 'bdoghump',
            Animation = 'hump_loop_chop',
            Dictionary = 'creatures@rottweiler@amb@',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
            NSFW = true
        },
        {
            Label = 'Hump 2 (big dog)',
            Command = 'bdoghump2',
            Animation = 'hump_loop_ladydog',
            Dictionary = 'creatures@rottweiler@amb@',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
            NSFW = true
        },
        {
            Label = 'Itch (big dog)',
            Command = 'bdogitch',
            Animation = 'idle_a',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@idle_a',
            Options = {
                Duration = 2000,
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Lay Down (big dog)',
            Command = 'bdoglay',
            Animation = 'dead_left',
            Dictionary = 'creatures@rottweiler@move',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Lay Down 2 (big dog)',
            Command = 'bdoglay2',
            Animation = 'dead_right',
            Dictionary = 'creatures@rottweiler@move',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Pee (big dog)',
            Command = 'bdogpee',
            Animation = 'pee_left_idle',
            Dictionary = 'creatures@rottweiler@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Ptfx = {
                    Asset = 'scr_amb_chop',
                    CanHold = true,
                    Name = 'ent_anim_dog_peeing',
                    Placement = {
                        vec3(-0.15, -0.35, 0.0),
                        vec3(0.0, 90.0, 180.0),
                        1.0,
                    },
                    Wait = 3000,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Pee 2 (big dog)',
            Command = 'bdogpee2',
            Animation = 'pee_right_idle',
            Dictionary = 'creatures@rottweiler@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Ptfx = {
                    Asset = 'scr_amb_chop',
                    CanHold = true,
                    Name = 'ent_anim_dog_peeing',
                    Placement = {
                        vec3(0.15, -0.35, 0.0),
                        vec3(0.0, 90.0, 0.0),
                        1.0,
                    },
                    Wait = 3000,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Sit Pride A (big dog)',
            Command = 'bdogpridea',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag1',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag1',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride B - LGBTQIA (big dog)',
            Command = 'bdogprideb',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag2',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag2',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride C - Bisexual (big dog)',
            Command = 'bdogpridec',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag3',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag3',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride D - Lesbian (big dog)',
            Command = 'bdogprided',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag4',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag4',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride E - Pansexual (big dog)',
            Command = 'bdogpridee',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag5',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag5',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride F - Transgender (big dog)',
            Command = 'bdogpridef',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride G - Non Binary (big dog)',
            Command = 'bdogprideg',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag7',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag7',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride H - Asexual (big dog)',
            Command = 'bdogprideh',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag8',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag8',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit Pride I - Straight Ally (big dog)',
            Command = 'bdogpridei',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag9',
                        Placement = {
                            vec3(0.19, 0.0, -0.05),
                            vec3(100.0, 90.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'lilprideflag9',
                        Placement = {
                            vec3(0.194, 0.02, -0.05),
                            vec3(-90.0, -90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'big_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Sit (big dog)',
            Command = 'bdogsit',
            Animation = 'base',
            Dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogup',
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Sleep (big dog)',
            Command = 'bdogsleep',
            Animation = 'sleep_in_kennel',
            Dictionary = 'creatures@rottweiler@amb@sleep_in_kennel@',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'bdogupk',
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Bark (small dog)',
            Command = 'sdogbark',
            Animation = 'idle_a',
            Dictionary = 'creatures@pug@amb@world_dog_barking@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Baseball (small dog)',
            Command = 'sdogbb',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'w_am_baseball',
                        Placement = {
                            vec3(0.15, -0.05, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Burger (small dog)',
            Command = 'sdogburger',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_burger_01',
                        Placement = {
                            vec3(0.15, -0.04, 0.0),
                            vec3(-90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Controller (small dog)',
            Command = 'sdogcontroller',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_controller_01',
                        Placement = {
                            vec3(0.18, -0.03, 0.0),
                            vec3(-180.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Dance (small dog)',
            Command = 'sdogdance',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ba_prop_battle_glowstick_01',
                        Placement = {
                            vec3(0.15, -0.03, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Dance 2 (small dog)',
            Command = 'sdogdance2',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ba_prop_battle_glowstick_01',
                        Placement = {
                            vec3(0.15, -0.03, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Dance Pride A (small dog)',
            Command = 'sdogdancepridea',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag1',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride B - LGBTQIA (small dog)',
            Command = 'sdogdanceprideb',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag2',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride C - Bisexual (small dog)',
            Command = 'sdogdancepridec',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag3',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride D - Lesbian (small dog)',
            Command = 'sdogdanceprided',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag4',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride E - Pansexual (small dog)',
            Command = 'sdogdancepridee',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag5',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride F - Transgender (small dog)',
            Command = 'sdogdancepridef',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride G - Non Binary (small dog)',
            Command = 'sdogdanceprideg',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag7',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride H - Asexual (small dog)',
            Command = 'sdogdanceprideh',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag8',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dance Pride I - Straight Ally (small dog)',
            Command = 'sdogdancepridei',
            Animation = 'idle_turn_0',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag9',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Dollar Bill (small dog)',
            Command = 'sdogdolla',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'p_banknote_onedollar_s',
                        Placement = {
                            vec3(0.17, -0.01, 0.0),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Dollar Bill Scrunched  (small dog)',
            Command = 'sdogdolla2',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'bkr_prop_scrunched_moneypage',
                        Placement = {
                            vec3(0.17, 0.0, 0.0),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Money Stack  (small dog)',
            Command = 'sdogdolla3',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'bkr_prop_money_wrapped_01',
                        Placement = {
                            vec3(0.17, -0.01, 0.0),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Money Bag  (small dog)',
            Command = 'sdogdolla4',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ch_prop_ch_moneybag_01a',
                        Placement = {
                            vec3(0.12, -0.2, 0.0),
                            vec3(-80.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Gun Gold (small dog)',
            Command = 'sdogggun',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 12844,
                        Name = 'w_pi_pistol_luxe',
                        Placement = {
                            vec3(0.201, -0.008, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Aviators (small dog)',
            Command = 'sdoggl1',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_aviators_01',
                        Placement = {
                            vec3(0.05, 0.04, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Aviators Sitting (small dog)',
            Command = 'sdoggl2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_aviators_01',
                        Placement = {
                            vec3(0.05, 0.04, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Sunglasses (small dog)',
            Command = 'sdoggl3',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Sunglasses Sitting (small dog)',
            Command = 'sdoggl4',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_sol_glasses',
                        Placement = {
                            vec3(0.05, 0.03, 0.0),
                            vec3(-100.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Gun Gold Sit (small dog)',
            Command = 'sdoggun2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 12844,
                        Name = 'w_pi_pistol_luxe',
                        Placement = {
                            vec3(0.201, -0.008, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Hat 1 (small dog)',
            Command = 'sdoghat',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_proxy_hat_01',
                        Placement = {
                            vec3(0.0, 0.12, 0.0),
                            vec3(-99.851074, 80.148926, 1.727941),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_aviators_01',
                        Placement = {
                            vec3(0.05, 0.04, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Hat 2 Sitting (small dog)',
            Command = 'sdoghat2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_proxy_hat_01',
                        Placement = {
                            vec3(0.0, 0.12, 0.0),
                            vec3(-99.851074, 80.148926, 1.727941),
                        },
                    },
                    {
                        Bone = 31086,
                        Name = 'prop_aviators_01',
                        Placement = {
                            vec3(0.05, 0.04, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Hot Dog (small dog)',
            Command = 'sdoghd1',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_hotdog_01',
                        Placement = {
                            vec3(0.13, -0.025, 0.0),
                            vec3(-88.272057, -9.846586, -0.148856),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Hot Dog Sitting (small dog)',
            Command = 'sdoghd2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_hotdog_01',
                        Placement = {
                            vec3(0.13, -0.025, 0.0),
                            vec3(-88.272057, -9.846586, -0.148856),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Helmet 1 (small dog)',
            Command = 'sdoghlmt1',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'ba_prop_battle_sports_helmet',
                        Placement = {
                            vec3(0.0, -0.02, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Helmet 2 (small dog)',
            Command = 'sdoghlmt2',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_hard_hat_01',
                        Placement = {
                            vec3(0.0, 0.13, 0.0),
                            vec3(-90.0, 90.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Itch (small dog)',
            Command = 'sdogitch',
            Animation = 'idle_a',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Duration = 2000,
                ExitEmote = 'sdogup',
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Microphone (small dog)',
            Command = 'sdogmic',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'p_ing_microphonel_01',
                        Placement = {
                            vec3(0.15, -0.017, 0.03),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Pee (Small Dog)',
            Command = 'sdogpee',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Ptfx = {
                    Asset = 'scr_amb_chop',
                    CanHold = true,
                    Name = 'ent_anim_dog_peeing',
                    Placement = {
                        vec3(-0.01, -0.17, 0.09),
                        vec3(0.0, 90.0, 140.0),
                        1.0,
                    },
                    Wait = 3000,
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Pride A (small dog)',
            Command = 'sdogpridea',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag1',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride B - LGBTQIA (small dog)',
            Command = 'sdogprideb',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag2',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride C - Bisexual (small dog)',
            Command = 'sdogpridec',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag3',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride D - Lesbian (small dog)',
            Command = 'sdogprided',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag4',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride E - Pansexual (small dog)',
            Command = 'sdogpridee',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag5',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride F - Transgender (small dog)',
            Command = 'sdogpridef',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride G - Non Binary (small dog)',
            Command = 'sdogprideg',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride H - Non Binary (small dog)',
            Command = 'sdogprideh',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag7',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride I - Asexual (small dog)',
            Command = 'sdogpridei',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag8',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride A Sit (small dog)',
            Command = 'sdogpridesita',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag1',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride B Sit LGBTQIA (small dog)',
            Command = 'sdogpridesitb',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag2',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride C Sit Bisexual (small dog)',
            Command = 'sdogpridesitc',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag3',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride D Sit Lesbian (small dog)',
            Command = 'sdogpridesitd',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag4',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride E Sit Pansexual (small dog)',
            Command = 'sdogpridesite',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag5',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride F Sit Transgender (small dog)',
            Command = 'sdogpridesitf',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag6',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride G Sit Non Binary (small dog)',
            Command = 'sdogpridesitg',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag7',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride H Sit Asexual (small dog)',
            Command = 'sdogpridesith',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag8',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Pride I Sit Straight Ally (small dog)',
            Command = 'sdogpridesiti',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'lilprideflag9',
                        Placement = {
                            vec3(0.124, -0.008, 0.0),
                            vec3(0.0, 0.0, -74.699898),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
            SocialMovement = true,
        },
        {
            Label = 'Rose (small dog)',
            Command = 'sdogrose',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 12844,
                        Name = 'prop_single_rose',
                        Placement = {
                            vec3(0.109, -0.014, 0.05),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Rose Sit (small dog)',
            Command = 'sdogrose2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 12844,
                        Name = 'prop_single_rose',
                        Placement = {
                            vec3(0.109, -0.014, 0.05),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Shake (small dog)',
            Command = 'sdogshake',
            Animation = 'idle_c',
            Dictionary = 'creatures@pug@amb@world_dog_barking@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Sit (small dog)',
            Command = 'sdogsit',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Sit Car (big dog)',
            Command = 'bdogsitcar',
            Animation = 'sit',
            Dictionary = 'creatures@rottweiler@incar@',
            Options = {
                Flags = {
                    Loop = true,
                },
            },
            PedTypes = {'big_dogs'},
        },
        {
            Label = 'Steak (small dog)',
            Command = 'sdogsteak',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_steak',
                        Placement = {
                            vec3(0.18, -0.02, 0.0),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Steak 2 Lay Down (small dog)',
            Command = 'sdogsteak2',
            Animation = 'idle_c',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_cs_steak',
                        Placement = {
                            vec3(0.18, -0.02, 0.0),
                            vec3(90.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Stun Gun (small dog)',
            Command = 'sdogstun',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 12844,
                        Name = 'w_pi_stungun',
                        Placement = {
                            vec3(0.14, -0.01, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
                Ptfx = {
                    Asset = 'core',
                    AttachToProp = true,
                    Name = 'blood_stungun',
                    Placement = {
                        vec3(0.208, 0.0, 0.0),
                        vec3(0.0, 0.0, 0.0),
                        1.0,
                    },
                    Wait = 200,
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Teddy (small dog)',
            Command = 'sdogteddy',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'v_ilev_mr_rasberryclean',
                        Placement = {
                            vec3(0.15, -0.11, -0.23),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Teddy 2 (small dog)',
            Command = 'sdogteddy2',
            Animation = 'idle_b',
            Dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
            Options = {
                Flags = {
                    Loop = true,
                },
                ExitEmote = 'sdogup',
                Props = {
                    {
                        Bone = 31086,
                        Name = 'v_ilev_mr_rasberryclean',
                        Placement = {
                            vec3(0.15, -0.11, -0.23),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Tennis Ball (small dog)',
            Command = 'sdogtennis',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_tennis_ball',
                        Placement = {
                            vec3(0.15, -0.06, 0.0),
                            vec3(0.0, 0.0, 0.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        },
        {
            Label = 'Tennis Racket (small dog)',
            Command = 'sdogtennisr',
            Animation = 'nill',
            Dictionary = 'creatures@pug@move',
            Options = {
                Flags = {
                    Loop = true,
                },
                Props = {
                    {
                        Bone = 31086,
                        Name = 'prop_tennis_rack_01',
                        Placement = {
                            vec3(0.15, -0.02, 0.0),
                            vec3(0.0, 0.0, -28.0),
                        },
                    },
                },
            },
            PedTypes = {'small_dogs'},
        }
    }
}