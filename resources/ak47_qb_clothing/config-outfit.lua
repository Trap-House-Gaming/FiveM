Config.Saveables = {
    ['tshirt_1'] = true,
    ['tshirt_2'] = true,
    ['torso_1'] = true,
    ['torso_2'] = true,
    ['torso_2'] = true,
    ['decals_1'] = true,
    ['decals_2'] = true,
    ['arms'] = true,
    ['arms_2'] = true,
    ['pants_1'] = true,
    ['pants_2'] = true,
    ['shoes_1'] = true,
    ['shoes_2'] = true,
    ['mask_1'] = true,
    ['mask_2'] = true,
    ['bproof_1'] = true,
    ['bproof_2'] = true,
    ['chain_1'] = true,
    ['chain_2'] = true,
    ['chain_2'] = true,
    ['helmet_1'] = true,
    ['helmet_2'] = true,
    ['glasses_1'] = true,
    ['glasses_2'] = true,
    ['watches_1'] = true,
    ['watches_2'] = true,
    ['bracelets_1'] = true,
    ['bracelets_2'] = true,
    ['bracelets_2'] = true,
    ['bags_1'] = true,
    ['bags_2'] = true,
    ['makeup_1'] = true,
    ['makeup_2'] = true,
    ['makeup_2'] = true,
    ['makeup_3'] = true,
    ['makeup_4'] = true,
    ['lipstick_1'] = true,
    ['lipstick_2'] = true,
    ['lipstick_3'] = true,
    ['lipstick_4'] = true,
    ['ears_1'] = true,
    ['ears_2'] = true,
    ['blush_1'] = true,
    ['blush_2'] = true,
    ['blush_3'] = true,
}

Config.DressingRooms = {
    {   coords = vector4(461.5, -996.65, 30.69, 94.02),
        length = 2, width = 2, 
        jobs = {
            ['police'] = true,
            ['ambulance'] = true,
        },
    },
    {   coords = vector4(301.5, -599.52, 43.28, 345.77), 
        length = 2, width = 2,
        jobs = {
            ['police'] = true,
            ['ambulance'] = true,
        },
    },
    {   coords = vector4(1698.78, 4818.13, 42.06, 8.57),
        length = 2, width = 2, 
    },
    {
        coords = vector4(-703.67, -151.59, 37.42, 168.14), 
        length = 2, width = 2,
    },
    {
        coords = vector4(429.83, -811.82, 29.49, 2.41), 
        length = 2, width = 2,
    },
    {
        coords = vector4(-168.2, -299.09, 39.73, 301.47), 
        length = 2, width = 2,
    },
    {
        coords = vector4(71.12, -1387.67, 29.38, 177.43), 
        length = 2, width = 2,
    },
    {
        coords = vector4(-819.87, -1067.15, 11.33, 117.12), 
        length = 2, width = 2,
    },
    {
        coords = vector4(-1447.17, -243.05, 49.82, 107.91), 
        length = 2, width = 2,
    },
    {
        coords = vector4(3.84, 6505.71, 31.88, 313.77), 
        length = 2, width = 2,
    },
    {
        coords = vector4(1202.22, 2714.48, 38.22, 84.51), 
        length = 2, width = 2,
    },
    {
        coords = vector4(-1100.34, 2717.33, 19.11, 133.99), 
        length = 2, width = 2,
    },
}

Config.Outfits = {
    ['police'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        ['pants'] = {item = 130, texture = 1}, -- Pants
                        ['arms'] = {item = 172, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0}, -- T Shirt
                        ['vest'] = {item = 15, texture = 2}, -- Body Vest
                        ['torso2'] = {item = 336, texture = 3}, -- Jacket
                        ['shoes'] = {item = 24, texture = 0}, -- Shoes
                        ['accessory'] = {item = 133, texture = 0}, -- Neck Accessory
                        ['hat'] = {item = 150, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 52, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 19, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 55, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 0}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = -1, texture = -1}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 3}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 24, texture = 0}, -- Pants
                        ['arms'] = {item = 20, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 58, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 317, texture = 8}, -- Jacket
                        ['shoes'] = {item = 51, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 3}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        ['pants'] = {item = 130, texture = 1}, -- Pants
                        ['arms'] = {item = 172, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0}, -- T Shirt
                        ['vest'] = {item = 15, texture = 2}, -- Body Vest
                        ['torso2'] = {item = 336, texture = 3}, -- Jacket
                        ['shoes'] = {item = 24, texture = 0}, -- Shoes
                        ['accessory'] = {item = 133, texture = 0}, -- Neck Accessory
                        ['hat'] = {item = 150, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 52, texture = 0} -- Mask
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        ['pants'] = {item = 135, texture = 1}, -- Pants
                        ['arms'] = {item = 213, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 0, texture = 0}, -- T Shirt
                        ['vest'] = {item = 17, texture = 2}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 102, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 149, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 35, texture = 0} -- Mask
                    }
                }
            },
            -- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 48, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 0}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 3}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        ['pants'] = {item = 133, texture = 0}, -- Pants
                        ['arms'] = {item = 31, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 35, texture = 0}, -- T Shirt
                        ['vest'] = {item = 34, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 0, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        ['pants'] = {item = 135, texture = 1}, -- Pants
                        ['arms'] = {item = 213, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 0, texture = 0}, -- T Shirt
                        ['vest'] = {item = 17, texture = 2}, -- Body Vest
                        ['torso2'] = {item = 327, texture = 8}, -- Jacket
                        ['shoes'] = {item = 52, texture = 0}, -- Shoes
                        ['accessory'] = {item = 102, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 149, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 35, texture = 0} -- Mask
                    }
                }
            }
        }
    },
    ['realestate'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- Pants
                    ["arms"]        = { item = 1, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 294, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 10, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            },
            -- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- Pants
                    ["arms"]        = { item = 0, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 105, texture = 7},  -- Jacket
                    ["shoes"]       = { item = 8, texture = 5},  -- Shoes
                    ["accessory"]   = { item = 11, texture = 3},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    }
                }
            }
        }
    },
    ['ambulance'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 93, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 32, texture = 3}, -- T-Shirt
                        ['torso2'] = {item = 31, texture = 7}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 28, texture = 0}, -- Pants
                        ['shoes'] = {item = 10, texture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 85, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 129, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 250, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 58, texture = 0}, -- Decals
                        ['accessory'] = {item = 127, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 90, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 15, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 249, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 57, texture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 96, texture = 0}, -- Pants
                        ['shoes'] = {item = 54, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 122, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 93, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 32, texture = 3}, -- T-Shirt
                        ['torso2'] = {item = 31, texture = 7}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0}, -- Decals
                        ['accessory'] = {item = 126, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 28, texture = 0}, -- Pants
                        ['shoes'] = {item = 10, texture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 39, texture = 3}, -- T-Shirt
                        ['torso2'] = {item = 7, texture = 1}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 34, texture = 0}, -- Pants
                        ['shoes'] = {item = 29, texture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        ['arms'] = {item = 109, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 159, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 258, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 66, texture = 0}, -- Decals
                        ['accessory'] = {item = 97, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 13, texture = 0}, -- T-Shirt
                        ['torso2'] = {item = 257, texture = 0}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 65, texture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 99, texture = 0}, -- Pants
                        ['shoes'] = {item = 55, texture = 0}, -- Shoes
                        ['mask'] = {item = 121, texture = 0}, -- Mask
                        ['hat'] = {item = 121, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        ['arms'] = {item = 105, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 39, texture = 3}, -- T-Shirt
                        ['torso2'] = {item = 7, texture = 1}, -- Jackets
                        ['vest'] = {item = 0, texture = 0}, -- Vest
                        ['decals'] = {item = 0, texture = 0}, -- Decals
                        ['accessory'] = {item = 96, texture = 0}, -- Neck
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['pants'] = {item = 34, texture = 0}, -- Pants
                        ['shoes'] = {item = 29, texture = 0}, -- Shoes
                        ['mask'] = {item = 0, texture = 0}, -- Mask
                        ['hat'] = {item = -1, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['ear'] = {item = 0, texture = 0} -- Ear accessories
                    }
                }
            }
        }
    }
}