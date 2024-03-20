const backgrounds = [
    'zr-assets/img/background.webp', //the default one should be named as background
    'zr-assets/img/background2.webp', //the rest don't matter
]

const backgroundRandomStart = true
const backgroundInterval = 2  // in seconds

const logo = {
    title: 'Trap House Gaming | Role Play',
    subtitle: 'Welcome To'
}

let backgroundPlayer = false; // if you want to use a video in the background

const notifications = [
    {
        title: 'Use /me commands for immersive character actions and reactions:',
        message: "Utilize the /me command to describe your character's actions in a way that enhances the role-playing experience. For example, '/me takes a deep breath, preparing for the impending challenge."
    },
    {
        title: 'Character Development:',
        message: "Invest time in crafting a comprehensive backstory and personality for your character to add depth and complexity to your roleplaying experience."
    },
    {
        title: 'Use /me commands for immersive character actions and reactions:',
        message: "Utilize the /me command to describe your character's actions in a way that enhances the role-playing experience. For example, '/me takes a deep breath, preparing for the impending challenge."
    },
    {
        title: 'Engage in IC Conversations:',
        message: "Actively participate in in-character conversations with other players to immerse yourself in the roleplay world and build connections with different characters."
    }
]

const topSliderImages = [
    '/zr-assets/top-slider/slide1.webp',
    '/zr-assets/top-slider/slide2.webp',
    '/zr-assets/top-slider/slide3.webp'
];

const trans = {
    tabs: {
        news: 'News',
        rules: 'Rules',
        patch: 'Patch Notes',
        team: 'Team',
    },
    social: {
        text: 'Follow the city on social'
    },
    loading: {
        text: 'Please wait. The city is loading...'
    }
}



const newsArticles = [
    { 
        title: "Grand Opening", 
        description: "Join the Grand Opening on TBD! Show up and show out at the grand opening for the city!",
        rewardTitle: 'TBD',
        rewardValue: 'TBD',
        image: "/zr-assets/news/slide4.webp"
    }
]


const options = {
    home: {
        icon: '/zr-assets/options/zr-icon-home.svg',
        text: 'Home'
    },
    youtube: {
        icon: '/zr-assets/options/zr-icon-player.svg',
        text: 'Youtube'
    },
    keyboard: {
        icon: '/zr-assets/options/zr-icon-keyboard.svg',
        text: 'Keyboard'
    },
    commands: {
        icon: '/zr-assets/options/zr-icon-commands.svg',
        text: 'Commands'
    },

}



const keyboard = {
    layout: [
        {"code": 27, "label": "Esc", "class": "key inkey"},
        {"code": 112, "label": "F1", "class": "key inkey active"}, // add active
        {"code": 113, "label": "F2", "class": "key inkey"},
        {"code": 114, "label": "F3", "class": "key inkey"},
        {"code": 115, "label": "F4", "class": "key inkey"},
        {"code": 116, "label": "F5", "class": "key inkey"},
        {"code": 117, "label": "F6", "class": "key inkey"},
        {"code": 118, "label": "F7", "class": "key inkey"},
        {"code": 119, "label": "F8", "class": "key inkey"},
        {"code": 120, "label": "F9", "class": "key inkey"},
        {"code": 121, "label": "F10", "class": "key inkey"},
        {"code": 122, "label": "F11", "class": "key inkey"},
        {"code": 123, "label": "F12", "class": "key inkey"},
        {"code": 8, "label": "Delete", "class": "key delete"},
        {"code": 192, "label": "~", "class": "key inkey"},
        {"code": 49, "label": "1", "class": "key inkey"},
        {"code": 50, "label": "2", "class": "key inkey"},
        {"code": 51, "label": "3", "class": "key inkey"},
        {"code": 52, "label": "4", "class": "key inkey"},
        {"code": 53, "label": "5", "class": "key inkey"},
        {"code": 54, "label": "6", "class": "key inkey"},
        {"code": 55, "label": "7", "class": "key inkey"},
        {"code": 56, "label": "8", "class": "key inkey"},
        {"code": 57, "label": "9", "class": "key inkey"},
        {"code": 48, "label": "0", "class": "key inkey"},
        {"code": 189, "label": "-", "class": "key inkey"},
        {"code": 187, "label": "+", "class": "key inkey"},
        {"code": 8, "label": "Backspace", "class": "key delete"},
        {"code": 9, "label": "Tab", "class": "key tab active"},
        {"code": 81, "label": "Q", "class": "key inkey"},
        {"code": 87, "label": "W", "class": "key inkey"},
        {"code": 69, "label": "E", "class": "key inkey"},
        {"code": 82, "label": "R", "class": "key inkey"},
        {"code": 84, "label": "T", "class": "key inkey active"},
        {"code": 89, "label": "Y", "class": "key inkey"},
        {"code": 85, "label": "U", "class": "key inkey"},
        {"code": 73, "label": "I", "class": "key inkey"},
        {"code": 79, "label": "O", "class": "key inkey"},
        {"code": 80, "label": "P", "class": "key inkey"},
        {"code": 219, "label": "[", "class": "key inkey"},
        {"code": 221, "label": "]", "class": "key inkey"},
        {"code": 220, "label": "\\", "class": "key inkey backslash"},
        {"code": 20, "label": "CapsLock", "class": "key capslock"},
        {"code": 65, "label": "A", "class": "key inkey"},
        {"code": 83, "label": "S", "class": "key inkey"},
        {"code": 68, "label": "D", "class": "key inkey"},
        {"code": 70, "label": "F", "class": "key inkey"},
        {"code": 71, "label": "G", "class": "key inkey active"},
        {"code": 72, "label": "H", "class": "key inkey active"},
        {"code": 74, "label": "J", "class": "key inkey"},
        {"code": 75, "label": "K", "class": "key inkey"},
        {"code": 76, "label": "L", "class": "key inkey active"},
        {"code": 186, "label": ";", "class": "key inkey"},
        {"code": 222, "label": "'", "class": "key inkey"},
        {"code": 13, "label": "Enter", "class": "key return"},
        {"code": 16, "label": "Shift", "class": "key leftshift"},
        {"code": 90, "label": "Z", "class": "key inkey"},
        {"code": 88, "label": "X", "class": "key inkey"},
        {"code": 67, "label": "C", "class": "key inkey"},
        {"code": 86, "label": "V", "class": "key inkey"},
        {"code": 66, "label": "B", "class": "key inkey active"},
        {"code": 78, "label": "N", "class": "key inkey"},
        {"code": 77, "label": "M", "class": "key inkey active"},
        {"code": 188, "label": ",", "class": "key inkey"},
        {"code": 190, "label": ".", "class": "key inkey"},
        {"code": 191, "label": "/", "class": "key inkey"},
        {"code": 16, "label": "Shift", "class": "key rightshift"},
        {"code": 17, "label": "Ctrl", "class": "key leftctrl"},
        {"code": 18, "label": "Alt", "class": "key"},
        {"code": 90, "label": "Command", "class": "key command"},
        {"code": 32, "label": "Space", "class": "key inkey space"},
        {"code": 90, "label": "Command", "class": "key command"},
        {"code": 18, "label": "Alt", "class": "key"},
        {"code": 17, "label": "Ctrl", "class": "key"},
        {"code": 0, "label": "Fn", "class": "key"}
    ],     
    key: {
        title: 'Select a highlighted key to Understand its assigned function.'
    },
    selectedKeys: {
        112: 'F1 - Opens the Interaction Menu, offering quick access to various in-game features, settings, and actions for an enhanced gaming experience.',
        9: 'TAB - Opens Inventory, allowing you to manage your characters items and equipment.',
        71: 'G - Toggles the vehicle engine, starting or stopping it.',
        66: 'B - Toggles the seat belt, fastening or unfastening it for safety while driving.',
        76: 'L - Toggles vehicle locks, preventing or allowing unauthorized access.',
        72: 'H - Toggles the vehicle headlights on or off for visibility at night.',
        77: 'M - Opens the map, providing an overview of the game world and points of interest.',
        84: 'T - Opens the chat, you can use different commands.',
    }
}

const commands = {
    title: 'Commands',
    subtitle: 'A list of all the commands and their respective resource',
    options: [
        {
            id: 1,
            label: 'Ambulance Jobs',
            commands: [
                {
                    code: '/911e [message]',
                    description: 'Sends a message to EMS.'
                },
                {
                    code: '/heal',
                    description: ' Heals the nearest player.'
                },
                {
                    code: '/status',
                    description: 'Check the status of the nearest player.'
                },
                {
                    code: '/revivep',
                    description: 'Revives the nearest player'
                },
                {
                    code: '/revive',
                    description: 'Revive yourself'
                },
                {
                    code: '/kill [opt: id]',
                    description: 'Kills the player'
                },
                {
                    code: '/aheal',
                    description: ' Heals a player'
                },
            ]
        },
        {
            id: 2,
            label: 'Mechanic Job',
            commands: [
                {
                    code: '/setvehiclestatus',
                    description: 'Sets the vehicles status'
                },
                {
                    code: '/setmechanic',
                    description: 'Give someone the mechanic job'
                },
                {
                    code: '/firemechanic',
                    description: 'Fire a mechanic'
                },
            ]
        },
        {
            id: 3,
            label: 'Police Job',
            commands: [
                {
                    code: '/911p [message]',
                    description: 'sends an alert to the police'
                },
                {
                    code: '/spikestrip',
                    description: 'Place a spike strip'
                },
                {
                    code: '/grantlicense [id] [license]',
                    description: 'give a player a license'
                },
                {
                    code: '/revokelicense [id] [license]',
                    description: 'remove a player license'
                },
                {
                    code: '/cuff',
                    description: 'cuff the nearest player'
                },
                {
                    code: '/escort',
                    description: 'escort the nearest player'
                },
                {
                    code: '/jail',
                    description: 'sends nearest player to jail'
                },
                {
                    code: '/unjail [id]',
                    description: 'unjail a player'
                },
                {
                    code: '/clearcasings',
                    description: 'clears bullet casings in the area'
                },
                {
                    code: '/flagplate [plate] [reason]',
                    description: 'allows speed cameras to find a plate flagged'
                },
                {
                    code: '/unflagplate [plate]',
                    description: 'removes the flag from the plate'
                },
                {
                    code: '/anklet',
                    description: 'adds a tracking device to the closest player'
                },
                {
                    code: '/ankletlocation [cid]',
                    description: 'shows the location of the player'
                },
                {
                    code: '/takedrivinglicense',
                    description: 'takes the players drivers license'
                },
                {
                    code: '/takedna [id]',
                    description: 'takes the players dna'
                },
                {
                    code: '/impound',
                    description: 'impounds a vehicle without a price'
                },
                {
                    code: '/depot [price]',
                    description: 'allows officer to impound vehicle for a price'
                },
                {
                    code: '/clearblood',
                    description: 'clears blood drops in the area'
                },
                {
                    code: '/pobject [type]',
                    description: 'allows officer to spawn an object'
                },
                {
                    code: '/clearcasings',
                    description: 'clears bullet casings in the area'
                },
            ]
        },
        {
            id: 4,
            label: 'Hud',
            commands: [
                {
                    code: '/cash',
                    description: 'displays current cash amount'
                },
                {
                    code: '/bank',
                    description: 'displays current bank amount'
                },
            ]
        },
        {
            id: 5,
            label: 'Inventory',
            commands: [
                {
                    code: '/rob',
                    description: 'robs closest player'
                },
                {
                    code: '/giveitem',
                    description: 'gives item to a player'
                },
                {
                    code: '/randomitems',
                    description: 'gives random items to a player'
                },
            ]
        }
    ]
}


const links = {
    discord: {
        icon: '/zr-assets/links/zr-icon-discord.svg',
        link: 'https://discord.gg/UE7nGjrKan'
    },
    link: {
        icon: '/zr-assets/links/zr-icon-link.svg',
        link: 'https://traphouse.tebex.io'
    },
    youtube: {
        icon: '/zr-assets/links/zr-icon-youtube.svg',
        link: ''
    },
    instagram: {
        icon: '/zr-assets/links/zr-icon-instagram.svg',
        link: ''
    },
    x: {
        icon: '/zr-assets/links/zr-icon-x.svg',
        link: ''
    }
}

const rules = {
    title: 'Roleplay Rules',
    content: [
        {
            title: 'Respect',
            list: [
                'Treat others with courtesy.',
                'Avoid offensive content.',
                'Obtain consent for major plot points.'
            ]
        },
        {
            title: 'Consistency',
            list: [
                'Maintain character coherence.'
            ]
        },
        {
            title: 'Collaboration',
            list: [
                'Collaborate with others to create engaging stories.'
            ]
        },
        {
            title: 'GM Authority',
            list: [
                'Respect Game Master authority and decisions.'
            ]
        },
        {
            title: 'Communication',
            list: [
                'Use clear and respectful communication.',
                'Resolve conflicts through open dialogue.'
            ]
        },
        {
            title: 'Character Development',
            list: [
                'Develop your character over time.',
                'Ensure your character actions align with their background.'
            ]
        },
        {
            title: 'Roleplay Etiquette',
            list: [
                'Avoid metagaming (using out-of-character knowledge in-character).',
                'Separate in-character and out-of-character actions and information.'
            ]
        },
        {
            title: 'Creativity',
            list: [
                'Encourage creative and immersive roleplay.',
                'Explore diverse storylines and character interactions.'
            ]
        }
    ]
}

const patchNotes = {
    title: 'Patch Notes',
    content: [
        {
            title: '15/12/2023',
            list: [
                {
                    text: 'Balanced Character Abilities:',
                    sublist: [
                        'Adjusted character abilities to create a more fair and enjoyable experience.',
                        'Treat others with courtesy.'
                    ]
                },
                {
                    text: 'Bug Fixes:',
                    sublist: [
                        'Resolved issues related to vehicle spawning.',
                        'Fixed an inventory glitch causing items to disappear.'
                    ]
                },
                {
                    text: 'New Features:',
                    sublist: [
                        'Introduced a new in-game radio system for enhanced roleplay opportunities.',
                        'Added a new job: Private Investigator.'
                    ]
                }
            ]
        },
        {
            title: '20/12/2023',
            list: [
                {
                    text: 'Economy Adjustments:',
                    sublist: [
                        'Balanced prices for various in-game items and services.',
                        'Adjusted salary rates for different jobs.'
                    ]
                },
                {
                    text: 'Security Updates:',
                    sublist: [
                        'Implemented enhanced security measures to prevent unauthorized access.',
                        'Resolved potential exploits and vulnerabilities.'
                    ]
                },
                {
                    text: 'Quality of Life Improvements:',
                    sublist: [
                        'Added a new /help command for easy access to in-game information.',
                        'Optimized server performance for a smoother experience.'
                    ]
                }
            ]
        }
    ]
}


const team = [
    {
        image: '/zr-assets/team/serious.webp',
        name: 'SERIOUS',
        role: 'Owner & Developer'
    },
    {
        image: '/zr-assets/team/zr-developer.webp',
        name: 'KIVG.LUIS',
        role: 'Co-Owner'
    },
    {
        image: '/zr-assets/team/zr-developer.webp',
        name: 'ViVi',
        role: 'Staff Manager'
    },
    {
        image: '/zr-assets/team/zr-developer.webp',
        name: 'Trill',
        role: 'Admin'
    },
	{
        image: '/zr-assets/team/zr-developer.webp',
        name: 'Kidd',
        role: 'Admin'
    },
]
var player;
function onYouTubeIframeAPIReady() {
    player = new YT.Player('zr-youtube-player', {
        videoId: 'h2vv-snKA18', // Replace with the actual YouTube video ID
        playerVars: {
        'autoplay': 0, // When set to 1, the video will automatically start playing as soon as the player loads. If set to 0, the video requires the user to click the play button.
        'controls': 1, //When set to 1, it shows the player controls (play/pause, volume, etc.). If set to 0, the controls are hidden.
        'showinfo': 0, //When set to 1, it displays video title and uploader information. If set to 0, this information is hidden.
        'rel': 0, //When set to 1, related videos are shown at the end of playback. If set to 0, related videos are not shown.
        'fs': 0, //When set to 1, the fullscreen button is displayed. If set to 0, the fullscreen option is disabled.
        'modestbranding': 0 //modestbranding: When set to 1, it removes the YouTube logo from the control bar. If set to 0, the YouTube logo is shown.
        },
        // events: {
        //     'onReady': onPlayerReady
        // }
    });
}

let autoplay = true;
let volume = 75; //Values between 0 and 100
// Define the tracks that have to be played
let track_list = [
    {
        name: "Costa Rica",
        artist: "Dreamville",
        image: "",
        path: "/zr-assets/video/dreamville.mp3"  
    },
    {
      name: "Run This Town",
      artist: "Jay-Z Ft. Rhianna, kanye west",
      image: "",
      path: "/zr-assets/video/runtown.mp3"
    }
];