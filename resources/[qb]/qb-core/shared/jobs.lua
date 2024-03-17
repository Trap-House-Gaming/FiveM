QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	unemployed = { label = 'Civilian', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Freelancer', payment = 10 } } },
	bus = { label = 'Bus', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	judge = { label = 'Honorary', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Judge', payment = 100 } } },
	lawyer = { label = 'Law Firm', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Associate', payment = 50 } } },
	reporter = { label = 'Reporter', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Journalist', payment = 50 } } },
	trucker = { label = 'Trucker', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	tow = { label = 'Towing', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	garbage = { label = 'Garbage', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Collector', payment = 50 } } },
	vineyard = { label = 'Vineyard', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Picker', payment = 50 } } },
	hotdog = { label = 'Hotdog', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Sales', payment = 50 } } },

	police = {
		label = 'Law Enforcement',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
            ['1'] = { name = 'Probationary Patrol Officer', payment = 100 },
            ['2'] = { name = 'Officer', payment = 150 },
            ['3'] = { name = 'Senior Officer', payment = 200 },
            ['4'] = { name = 'Corporal', payment = 250 },
            ['5'] = { name = 'Sergeant', payment = 300 },
			['6'] = { name = 'Lieutenant', payment = 350 },
            ['7'] = { name = 'Captain', payment = 400 },
			['8'] = { name = 'Commander', payment = 450 },
			['9'] = { name = 'Assistant Chief', payment = 500 },
			['10'] = { name = 'Chief', payment = 550 },
			['11'] = { name = 'Commissioner', isboss = true, payment = 600 },
		},
	},
	ambulance = {
		label = 'EMS',
		type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Paramedic', payment = 100 },
			['1'] = { name = 'Certified Paramedic', payment = 150 },
			['2'] = { name = 'Medical Assitant', payment = 250 },
			['3'] = { name = 'Registered Nurse', payment = 250 },
            ['4'] = { name = 'Doctor', payment = 350 },
            ['5'] = { name = 'Head Doctor', payment = 450 },
            ['6'] = { name = 'Surgeon', payment = 400 },
            ['7'] = { name = 'Head Surgeon', payment = 450 },
			['8'] = { name = 'Director', isboss = true, payment = 600 },
		},
	},
	realestate = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'House Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Broker', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	taxi = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Driver', payment = 75 },
			['2'] = { name = 'Event Driver', payment = 100 },
			['3'] = { name = 'Sales', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	cardealer = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Showroom Sales', payment = 75 },
			['2'] = { name = 'Business Sales', payment = 100 },
			['3'] = { name = 'Finance', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	mechanic = {
		label = 'LS Customs',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	mechanic2 = {
		label = 'LS Customs',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	mechanic3 = {
		label = 'LS Customs',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	beeker = {
		label = 'Beeker\'s Garage',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	bennys = {
		label = 'Benny\'s Original Motor Works',
		type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 600 },
		},
	},
	burgershot = {
		label = 'Burgershot',
		defaultDuty = false,
		grades = {
			['0'] = {name = 'Trainee', payment = 50 },
			['1'] = {name = 'Employee', payment = 75 },
			['2'] = {name = 'Burger Flipper',payment = 100},
			['3'] = {name = 'Manager', payment = 125 },
			['4'] = {name = 'Owner', isboss = true, payment = 600 },
		},
	},
	['nailsalon'] = {
		label = 'Nail Salon',
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Employee',
				payment = 50
			},
			['1'] = {
				name = 'Owner',
				payment = 600,
				isboss = true,
			},
		},
	},
	['tattoo'] = {
		label = 'Tattoo',
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Employee',
				payment = 50
			},
			['1'] = {
				name = 'Owner',
				payment = 600,
				isboss = true,
			},
		},
	},
	['chickfila'] = {
    label = 'Chick-fil-A',
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['dominos'] = {
    label = "Dominos",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['dunkin'] = {
    label = "Dunkin'",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},

['icebox'] = {
    label = 'Icebox',
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Goldsmith',
            payment = 50
        },
        ['1'] = {
            name = 'Shopkeeper',
            payment = 75
        },
        ['2'] = {
            name = 'Manager',
            payment = 100
        },
        ['3'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['mcdonalds'] = {
    label = "McDonalds",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['pearls'] = {
    label = "Pearls",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['popeyes'] = {
    label = "Popeyes",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['taco'] = {
    label = "Taco",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['wingstop'] = {
    label = "Wingstop",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['aldentes'] = {
    label = "Aldentes",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['cluckinbell'] = {
    label = "Cluckinbell",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},
['craftbar'] = {
    label = "Craftbar",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Waiter',
            payment = 50
        },
        ['1'] = {
            name = 'Delivery Driver',
            payment = 75
        },
        ['2'] = {
            name = 'Cook',
            payment = 100
        },
        ['3'] = {
            name = 'Manager',
            payment = 100
        },
        ['4'] = {
            name = 'Owner',
            payment = 600,
            isboss = true,
        },
    },
},

}
