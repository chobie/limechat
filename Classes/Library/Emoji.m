//
//  Emoji.m
//  LimeChat
//
//  Created by Shuhei Tanuma on 5/18/12.
//  Copyright (c) 2012 Gree, Inc. All rights reserved.
//
#import <string.h>
#import "Emoji.h"

static const char *emoji_symbols[] = {
    "bowtie",
    "smile",
    "blush",
    "smiley",
    "relaxed",
    "smirk",
    "heart_eyes",
    "kissing_heart",
    "kissing_face",
    "flushed",
    "relieved",
    "satisfied",
    "grin",
    "wink",
    "wink2",
    "tongue",
    "unamused",
    "sweat",
    "pensive",
    "disappointed",
    "confounded",
    "fearful",
    "cold_sweat",
    "persevere",
    "cry",
    "sob",
    "joy",
    "astonished",
    "scream",
    "angry",
    "rage",
    "sleepy",
    "mask",
    "imp",
    "alien",
    "yellow_heart",
    "blue_heart",
    "purple_heart",
    "heart",
    "green_heart",
    "broken_heart",
    "heartbeat",
    "heartpulse",
    "cupid",
    "sparkles",
    "star",
    "star2",
    "anger",
    "exclamation",
    "question",
    "grey_exclamation",
    "grey_question",
    "zzz",
    "dash",
    "sweat_drops",
    "notes",
    "musical_note",
    "fire",
    "hankey",
    "poop",
    "shit",
    "+1",
    "thumbsup",
    "-1",
    "thumbsdown",
    "ok_hand",
    "punch",
    "fist",
    "v",
    "wave",
    "hand",
    "open_hands",
    "point_up",
    "point_down",
    "point_left",
    "point_right",
    "raised_hands",
    "pray",
    "point_up_2",
    "clap",
    "muscle",
    "metal",
    "walking",
    "runner",
    "couple",
    "dancer",
    "dancers",
    "ok_woman",
    "no_good",
    "information_desk_person",
    "bow",
    "couplekiss",
    "couple_with_heart",
    "massage",
    "haircut",
    "nail_care",
    "boy",
    "girl",
    "woman",
    "man",
    "baby",
    "older_woman",
    "older_man",
    "person_with_blond_hair",
    "man_with_gua_pi_mao",
    "man_with_turban",
    "construction_worker",
    "cop",
    "angel",
    "princess",
    "guardsman",
    "skull",
    "feet",
    "lips",
    "kiss",
    "ear",
    "eyes",
    "nose",
    "feelsgood",
    "finnadie",
    "goberserk",
    "godmode",
    "hurtrealbad",
    "rage1",
    "rage2",
    "rage3",
    "rage4",
    "suspect",
    "trollface",
    //Nature
    "sunny",
    "umbrella",
    "cloud",
    "snowman",
    "moon",
    "zap",
    "cyclone",
    "ocean",
    "cat",
    "dog",
    "mouse",
    "hamster",
    "rabbit",
    "wolf",
    "frog",
    "tiger",
    "koala",
    "bear",
    "pig",
    "cow",
    "boar",
    "monkey_face",
    "monkey",
    "horse",
    "racehorse",
    "camel",
    "sheep",
    "elephant",
    "snake",
    "bird",
    "baby_chick",
    "chicken",
    "penguin",
    "bug",
    "octopus",
    "tropical_fish",
    "fish",
    "whale",
    "dolphin",
    "bouquet",
    "cherry_blossom",
    "tulip",
    "four_leaf_clover",
    "rose",
    "sunflower",
    "hibiscus",
    "maple_leaf",
    "leaves",
    "fallen_leaf",
    "palm_tree",
    "cactus",
    "ear_of_rice",
    "shell",
    "octocat",
    "squirrel",
    //Objects
    "bamboo",
    "gift_heart",
    "dolls",
    "school_satchel",
    "mortar_board",
    "flags",
    "fireworks",
    "sparkler",
    "wind_chime",
    "rice_scene",
    "jack_o_lantern",
    "ghost",
    "santa",
    "christmas_tree",
    "gift",
    "bell",
    "tada",
    "balloon",
    "cd",
    "dvd",
    "camera",
    "movie_camera",
    "computer",
    "tv",
    "iphone",
    "fax",
    "phone",
    "telephone",
    "minidisc",
    "vhs",
    "speaker",
    "loudspeaker",
    "mega",
    "radio",
    "satellite",
    "loop",
    "mag",
    "unlock",
    "lock",
    "key",
    "scissors",
    "hammer",
    "bulb",
    "calling",
    "email",
    "mailbox",
    "postbox",
    "bath",
    "toilet",
    "seat",
    "moneybag",
    "trident",
    "smoking",
    "bomb",
    "gun",
    "pill",
    "syringe",
    "football",
    "basketball",
    "soccer",
    "baseball",
    "tennis",
    "golf",
    "8ball",
    "swimmer",
    "surfer",
    "ski",
    "spades",
    "hearts",
    "clubs",
    "diamonds",
    "gem",
    "ring",
    "trophy",
    "space_invader",
    "dart",
    "mahjong",
    "clapper",
    "memo",
    "pencil",
    "book",
    "art",
    "microphone",
    "headphones",
    "trumpet",
    "saxophone",
    "guitar",
    "part_alternation_mark",
    "shoe",
    "sandal",
    "high_heel",
    "lipstick",
    "boot",
    "shirt",
    "tshirt",
    "necktie",
    "dress",
    "kimono",
    "bikini",
    "ribbon",
    "tophat",
    "crown",
    "womans_hat",
    "closed_umbrella",
    "briefcase",
    "handbag",
    "beer",
    "beers",
    "cocktail",
    "sake",
    "fork_and_knife",
    "hamburger",
    "fries",
    "spaghetti",
    "curry",
    "bento",
    "sushi",
    "rice_ball",
    "rice_cracker",
    "rice",
    "ramen",
    "stew",
    "bread",
    "egg",
    "oden",
    "dango",
    "icecream",
    "shaved_ice",
    "birthday",
    "cake",
    "apple",
    "tangerine",
    "watermelon",
    "strawberry",
    "eggplant",
    "tomato",
    "coffee",
    "tea",
    //Places
    "109",
    "house",
    "school",
    "office",
    "post_office",
    "hospital",
    "bank",
    "convenience_store",
    "love_hotel",
    "hotel",
    "wedding",
    "church",
    "department_store",
    "city_sunrise",
    "city_sunset",
    "japanese_castle",
    "european_castle",
    "tent",
    "factory",
    "tokyo_tower",
    "mount_fuji",
    "sunrise_over_mountains",
    "sunrise",
    "stars",
    "statue_of_liberty",
    "rainbow",
    "ferris_wheel",
    "fountain",
    "roller_coaster",
    "ship",
    "speedboat",
    "boat",
    "sailboat",
    "airplane",
    "rocket",
    "bike",
    "blue_car",
    "car",
    "red_car",
    "taxi",
    "bus",
    "police_car",
    "fire_engine",
    "ambulance",
    "truck",
    "train",
    "station",
    "bullettrain_front",
    "bullettrain_side",
    "ticket",
    "fuelpump",
    "traffic_light",
    "warning",
    "construction",
    "beginner",
    "atm",
    "slot_machine",
    "busstop",
    "barber",
    "hotsprings",
    "checkered_flag",
    "crossed_flags",
    "jp",
    "kr",
    "cn",
    "us",
    "fr",
    "es",
    "it",
    "ru",
    "gb",
    "de",
    //Symbols
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    "hash",
    "arrow_backward",
    "arrow_down",
    "arrow_forward",
    "arrow_left",
    "arrow_lower_left",
    "arrow_lower_right",
    "arrow_right",
    "arrow_up",
    "arrow_upper_left",
    "arrow_upper_right",
    "rewind",
    "fast_forward",
    "ok",
    "new",
    "top",
    "up",
    "cool",
    "cinema",
    "koko",
    "signal_strength",
    "u5272",
    "u55b6",
    "u6307",
    "u6708",
    "u6709",
    "u6e80",
    "u7121",
    "u7533",
    "u7a7a",
    "sa",
    "restroom",
    "mens",
    "womens",
    "baby_symbol",
    "no_smoking",
    "parking",
    "wheelchair",
    "metro",
    "wc",
    "secret",
    "congratulations",
    "ideograph_advantage",
    "underage",
    "id",
    "eight_spoked_asterisk",
    "eight_pointed_black_star",
    "heart_decoration",
    "vs",
    "vibration_mode",
    "mobile_phone_off",
    "chart",
    "currency_exchange",
    "aries",
    "taurus",
    "gemini",
    "cancer",
    "leo",
    "virgo",
    "libra",
    "scorpius",
    "sagittarius",
    "capricorn",
    "aquarius",
    "pisces",
    "ophiuchus",
    "six_pointed_star",
    "a",
    "b",
    "ab",
    "o2",
    "red_circle",
    "black_square",
    "white_square",
    "clock1",
    "clock10",
    "clock11",
    "clock12",
    "clock2",
    "clock3",
    "clock4",
    "clock5",
    "clock6",
    "clock7",
    "clock8",
    "clock9",
    "o",
    "x",
    "copyright",
    "registered",
    "tm",
    "shipit",
};

static int is_sorted = 0;
static const size_t emoji_symbol_count = sizeof(emoji_symbols)/sizeof(char *);

static int compare(const void *a, const void*b)
{
    return strcmp(*(char **)a, *(char **)b);   
}

static int compare2(const char *a, const char **b)
{
    return strcmp(a, *b);   
}


@implementation Emoji

- (id) init
{
    if (self = [super init]) {
        @synchronized(self) {
            if (is_sorted == 0) {
                qsort(emoji_symbols, emoji_symbol_count, sizeof(char **), compare);
            }
        }
    }

    return self;
}

- (NSString*) render:(NSString*)string
{
    int i, offset, mode, length = 0;
    unsigned int base = 0;
    char *o, *p = NULL;
    const char **target = NULL;
    char symbol[25] = {0};
    const char *data = [string cStringUsingEncoding:NSUTF8StringEncoding];
 
    length = strlen(data);
    NSMutableString *result = [[NSMutableString alloc] initWithString:string];
    
    p = (char *)data;
    mode = 0;
    for (i = 0; i < length; i++) {
        if (mode == 0 && p[0] == ':') {
            offset = i;
            o = ++p;
            mode = 1;
        } else if (mode == 1 && (i-offset) > 24) { // max symbol length
            offset = 0;
            o = NULL;
            mode = 0;
        } else if (mode == 1 && p[0] == ':') {
            mode = 0;
            memcpy(symbol, o, (i - offset));
            symbol[(i-offset+1)] = '\0';
            
            target = bsearch(symbol,emoji_symbols,emoji_symbol_count, sizeof(char*),
                             (int (*)(const void *, const void *))compare2);
            if (target) {
                NSString *tmp = [NSString stringWithFormat:@"<img src=\"%@/%s.png\" width=\"20\" border=0 style=\"border:0px !important\" />", 
                                 [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"emoji"],
                                 *target];
                [result replaceCharactersInRange:NSMakeRange(offset+base,(i-offset+2)) withString:tmp];
                base += [tmp length] - (i - offset +1);
            }
        }
        
        p++;
    }
    
    return [NSString stringWithString:result];
}

@end

