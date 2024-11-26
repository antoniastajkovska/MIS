import 'package:flutter/material.dart';
import '../models/clothing_item.dart';
import '../widgets/clothing_card.dart';

class ClothingListScreen extends StatelessWidget {
  const ClothingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Clothing> clothingItems = [
      Clothing(id: 1, name: "DOUBLE-FACED LONG JACKET", image: "https://static.zara.net/assets/public/83fe/992f/989c4c8c846d/d754f99b685d/08073263716-e1/08073263716-e1.jpg?ts=1727254785693&w=315", description: "Jacket with a lapel collar and tab. Long sleeves and a belted hem. Featuring a borg lining detail, front zip pockets and a cross-over zip fastening.", price: 4590.00),
      Clothing(id: 2, name: "TRF WIDE-LEG MID-WAIST JEANS", image: "https://static.zara.net/assets/public/16b7/d0a3/77d549bd8b43/9af99cb845e5/05520228406-e1/05520228406-e1.jpg?ts=1723542037510&w=315", description: "Mid-waist jeans with belt loops and a five-pocket design. Zip fly and metal top button fastening.", price: 1990.00),
      Clothing(id: 3, name: "SOFT PLAIN KNIT SWEATER", image: "https://static.zara.net/assets/public/e933/e0a0/6e164262a103/890a4ca1b6d9/02142168809-e1/02142168809-e1.jpg?ts=1728982791723&w=315", description: "Long sleeve round neck sweater with ribbed trims.", price: 1790.00),
      Clothing(id: 4, name: "BASIC COTTON T-SHIRT", image: "https://static.zara.net/assets/public/2c42/aee2/37f846a38872/c0f0fb74bc11/03253322250-e1/03253322250-e1.jpg?ts=1719324848461&w=239", description: "MID WEIGHT - REGULAR FIT- ROUND NECK - NORMAL LENGTH - SHORT SLEEVES", price: 449.0),
      Clothing(id: 5, name: "OVERSIZED ZIPPED SWEATSHIRT", image: "https://static.zara.net/assets/public/759b/5943/9efe422f8c1a/0b679d3d71e2/04174842807-e1/04174842807-e1.jpg?ts=1730979548606&w=239", description: "Hooded sweatshirt made of cotton yarn. Long sleeves finished with cuffs. Front metal zip fastening.", price: 1590.0),
      Clothing(id: 6, name: "SOFT OVERSIZE COAT", image: "https://static.zara.net/assets/public/0232/f5d1/2cea4192809d/a4dcbe136b69/03046299800-e1/03046299800-e1.jpg?ts=1726585961829&w=239", description: "Oversized coat with a lapel collar and long sleeves finished with a tab and button. Featuring front welt pockets and double-breasted button fastening.", price: 3990.0),
      Clothing(id: 7, name: "SOFT SWEATER", image: "https://static.zara.net/assets/public/0254/649a/372a4fffa740/39407a63b2bb/05039376720-e1/05039376720-e1.jpg?ts=1726836573005&w=239", description: "Round neck sweater with ribbed trims. Long sleeves with seamless finish.", price: 1190.0),
      Clothing(id: 8, name: "LEATHER EFFECT BOMBER JACKET", image: "https://static.zara.net/assets/public/2997/78ea/0b08450686de/a72abbc03f2a/04341864800-e1/04341864800-e1.jpg?ts=1723535704736&w=239", description: "Faux leather bomber jacket with a lapel collar and long sleeves finished with buttoned cuffs. Welt pockets on the front. Elasticated hem. Zip-up front with a metal zip.", price: 2590.0),
      Clothing(id: 9, name: "SKORT WITH SLIT AT THE HEM", image: "https://static.zara.net/assets/public/2048/84bf/492e422ba7d4/10d8c2bc9c9f/01608041800-018-e1/01608041800-018-e1.jpg?ts=1728285186357&w=239", description: "High-waist skort featuring a front slit at the hem and invisible side zip fastening.", price: 1590.0),
      Clothing(id: 10, name: "SOFT BOMBER JACKET", image: "https://static.zara.net/assets/public/e358/7dfa/a903406ab208/186af42fc579/03046274802-e1/03046274802-e1.jpg?ts=1723802727985&w=239", description: "Bomber jacket with a round neck and long sleeves finished with inner elastic cuffs. Welt pockets on the front. Elasticated hem. Contrast lining. Zip-up front", price: 1990.0),
      Clothing(id: 11, name: "TRF MOM FIT HIGH-WAIST JEANS", image: "https://static.zara.net/assets/public/ca06/eba5/e1f64dd08908/4bd1b49ce244/04730247401-e1/04730247401-e1.jpg?ts=1723645823250&w=239", description: "High-waist jeans with belt loops and a five-pocket design. Front zip fly and metal top button fastening.", price: 1590.0),
      Clothing(id: 12, name: "SOFT KNIT CARDIGAN", image: "https://static.zara.net/assets/public/88bf/e2fe/bb0a414193c2/1c100f19f09a/05536201505-e1/05536201505-e1.jpg?ts=1730389213196&w=239", description: "Round neck cardigan with long sleeves. Featuring ribbed trims. Side vents at the hem. Matching button fastening at the front.", price: 1590.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('211048'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          return ClothingCard(clothing: clothingItems[index]);
        },
      ),
    );
  }
}