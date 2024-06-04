import 'package:anki_like_app/app/custom_appbar.dart';
import 'package:anki_like_app/components/flashcards_page/card_one.dart';
import 'package:anki_like_app/components/flashcards_page/card_two.dart';
import 'package:anki_like_app/configs/themes.dart';
import 'package:anki_like_app/notifiyers/flascards_notifiyer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class FlashCardsPage extends StatefulWidget {
  const FlashCardsPage({super.key});

  @override
  State<FlashCardsPage> createState() => _FlashCardsPageState();
}

class _FlashCardsPageState extends State<FlashCardsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<FlashCardsNotifier>(
      builder:
          (BuildContext context, FlashCardsNotifier notifier, Widget? child) =>
              Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56), child: CustomAppBar()),
        body: const Stack(
          children: [
            CardTwo(),
            CardOne(),
          ],
        ),
        backgroundColor: palette.trueWhite,
      ),
    );
  }
}

