import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import './schema.graphql.dart';

const data = {
  "__typename": "Query",
  "walletGetContent": {
    "__typename": "WalletGetContentPayload",
    "blocks": [
      {
        "__typename": "WalletContentBlockList",
        "id": "1",
        "blockType": {
          "__typename": "WalletContentBlockType",
          "id": "horizontal-scrolling-list",
        },
        "caption": "Featured",
        "items": [
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "1",
            "caption": "Remarkable Women #4740",
            "imageURL":
                "https://lh3.googleusercontent.com/1kXncBpOzPjZAC46GDNXvW4NL0zDv1e_E6vzsTtKEAOAvb0SwbWzwljDY5hulMqRA4zQytjYjV7B-a_jYtNG6zy9dKssov9RRRLu5ss=w600",
            "link":
                "https://opensea.io/assets/ethereum/0x3e69baab7a742c83499661c5db92386b2424df11/4740"
          },
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "2",
            "caption": "Inftspaces",
            "imageURL":
                "https://lh3.googleusercontent.com/8h6WQ4_Kxn0c6rBujSe0flZMTSKiWGWiMOSNaSTPUchakVq4TmyBOWJi4E0GU3_5b7v4jF-vIPR24uziltXMfQHgzEj3zBCkW_Tbsw=s0",
            "link":
                "https://opensea.io/assets/ethereum/0xb11288c7237765db4782dfddcc49e31bb80132b8/90"
          },
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "3",
            "caption": "Love on Mars",
            "imageURL":
                "https://lh3.googleusercontent.com/XoOJwf3DQ6ZWMpmmLkVqfZD3AqEM3G0xQCXNur0-u5-HAHpoMHyPJQL__5H0wpJsy2cafaaCSSxI5YPjnzCZ-4ME7hnJXrgd5292nA=s0",
            "link":
                "https://opensea.io/collection/love-on-mars-by-ruben-rojas-x-omgdrops"
          }
        ]
      },
      {
        "__typename": "WalletContentBlockList",
        "id": "2",
        "blockType": {
          "__typename": "WalletContentBlockType",
          "id": "vertical-short-list"
        },
        "caption": "New",
        "items": [
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "1",
            "caption": "MSO LAB Genesis #844",
            "imageURL":
                "https://lh3.googleusercontent.com/FCcSKSsYaNk9-bzks7ZWIEjFPiL8xrtb8aYnO2DG0piF9Eja1AkY55Yan-KQqtpcwISdpTWNz_W0yrmmmQM2hAHNG_AIXl7E4ATG2Q=w600",
            "link":
                "https://opensea.io/assets/ethereum/0xc2ac394984f3850027dac95fe8a62e446c5fb786/844"
          },
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "2",
            "caption": "The Outsiders Genesis",
            "imageURL":
                "https://lh3.googleusercontent.com/AM8EkaQl32uR8N1RIiJa5ogVG1gh2faX6u4a1TAa_NhsGkA2CRG0pFfMOOxcc09q2KFq5cQNljTFkDbbScWpUT70es83Di0RRWD7fjM=s0",
            "link": "https://opensea.io/collection/the-outsiders-genesis"
          },
          {
            "__typename": "WalletContentItemContentPreview",
            "id": "3",
            "caption": "Bored Ape Yacht Club #6386",
            "imageURL":
                "https://img.seadn.io/files/968a4be8ada4a55b59de561d15522b4e.png?fit=max&w=600",
            "link":
                "https://opensea.io/assets/ethereum/0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d/6386"
          }
        ]
      }
    ]
  }
};
void main() {
  group("Issue 168", () {
    test("payload", () {
      expect(Query$WalletGetContent.fromJson(data).toJson(), equals(data));
    });
  });
}
