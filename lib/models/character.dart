import 'package:bt21/constant.dart';
import 'package:flutter/material.dart';

class Character {
  final String imgSrc, name, creator, description, tag, nickname;
  final Color colorData;
  final int id;

  Character({
    required this.id,
    required this.nickname,
    required this.imgSrc,
    required this.name,
    required this.creator,
    required this.description,
    required this.colorData,
    required this.tag,
  });
}

List<Character> character = [
  Character(
    id: 1,
    imgSrc: "sources/koya.png",
    name: "KOYA",
    creator: "Kim Namjoon",
    nickname: "Sleepyhead",
    description:
        "Brilliant, multi-talented KOYA is quite the ‘sleeping cutie’. KOYA naps with a mind heavily filled with thoughts",
    colorData: kKoyaColor,
    tag: "#talented, #pillow, #droopyeyes, #removableears",
  ),
  Character(
    id: 2,
    imgSrc: "sources/rj.png",
    name: "RJ",
    creator: "Kim Seok-jin",
    nickname: "Foodie",
    description:
        "RJ loves cooking. RJ loves eating. It's usually in that order. The fluffy fur coat and compassionate soul make everyone feel right at home.",
    colorData: kRjColor,
    tag: "#greetings, #gentlesoul, #parka, #omnomnom",
  ),
  Character(
    id: 3,
    imgSrc: "sources/cooky.png",
    name: "COOKY",
    creator: "Jeon Jungkook",
    nickname: "Brawny",
    description:
        "Don’t let COOKY’s perky appearance fool you. Always full of heart and boundless stamina, COOKY’s that one friend you can always count on.",
    colorData: kCookyColor,
    tag: "#unbalanced, #eyebrows, #loyal, #imaginarymuscles",
  ),
  Character(
    id: 4,
    imgSrc: "sources/shooky.png",
    name: "SHOOKY",
    creator: "Min Yoongi",
    nickname: "Mini Prankster",
    description:
        "Tiny SHOOKY loves pulling pranks, especially ones dropped on friends. The one thing SHOOKY hates most is milk.",
    colorData: kShookyColor,
    tag: "#fun, #manyfaces, #mini, #CRUNCHYSQUAD",
  ),
  Character(
    id: 5,
    imgSrc: "sources/tata.png",
    name: "TATA",
    creator: "Kim Taehyung",
    nickname: "Prince",
    description:
        "TATA is a crown prince on Planet BT. Possessor of supernatural powers and a hyper-elastic body that stretches to great lengths.",
    colorData: kTataColor,
    tag: "#PlanetBT, #offthewall, #superpowers, #Prince",
  ),
  Character(
    id: 6,
    imgSrc: "sources/chimmy.png",
    name: "CHIMMY",
    creator: "Park Jimin",
    nickname: "Pure-at-heart",
    description:
        "CHIMMY always sports the signature yellow hoodie and is compelled to work hard on anything that catches CHIMMY’s attention.",
    colorData: kChimmyColor,
    tag: "#passion, #workhard, #playhard, #yellowhoodie",
  ),
  Character(
    id: 7,
    imgSrc: "sources/mang.png",
    name: "MANG",
    creator: "Jung Ho-seok",
    nickname: "Mystery Dancer",
    description:
        "Dancing runs in MANG’s veins. Wherever there’s music, MANG’s probably there breaking out some cool moves. Veiled under a mask, MANG's true identity remains a secret.",
    colorData: kMangColor,
    tag: "#heartshapednose, #mask, #mystery, #bestdancer",
  ),
];
