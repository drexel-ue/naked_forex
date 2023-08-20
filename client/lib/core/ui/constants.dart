// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// CONSTRAINTS
const maxWidthConstraint1000 = BoxConstraints(
  maxWidth: 1000,
);

// BORDER RADIUS
const allBorderRadius4 = BorderRadius.all(Radius.circular(4));
const allBorderRadius6 = BorderRadius.all(Radius.circular(6));
const allBorderRadius8 = BorderRadius.all(Radius.circular(8));
const allBorderRadius10 = BorderRadius.all(Radius.circular(10));
const allBorderRadius12 = BorderRadius.all(Radius.circular(12));
const allBorderRadius20 = BorderRadius.all(Radius.circular(20));
const allBorderRadius24 = BorderRadius.all(Radius.circular(24));
const allBorderRadius40 = BorderRadius.all(Radius.circular(40));
const allBorderRadius48 = BorderRadius.all(Radius.circular(48));
const topBorderRadius24 = BorderRadius.only(
  topLeft: Radius.circular(24),
  topRight: Radius.circular(24),
);

// MARGIN
const horizontalMargin2 = SizedBox(width: 2);
const horizontalMargin4 = SizedBox(width: 4);
const horizontalMargin5 = SizedBox(width: 5);
const horizontalMargin6 = SizedBox(width: 6);
const horizontalMargin8 = SizedBox(width: 8);
const horizontalMargin10 = SizedBox(width: 10);
const horizontalMargin12 = SizedBox(width: 12);
const horizontalMargin15 = SizedBox(width: 15);
const horizontalMargin16 = SizedBox(width: 16);
const horizontalMargin20 = SizedBox(width: 20);
const horizontalMargin24 = SizedBox(width: 24);
const horizontalMargin30 = SizedBox(width: 30);
const horizontalMargin32 = SizedBox(width: 32);
const horizontalMargin36 = SizedBox(width: 36);
const horizontalMargin48 = SizedBox(width: 48);
const horizontalMargin56 = SizedBox(width: 56);
const horizontalMargin64 = SizedBox(width: 64);

const verticalMargin4 = SizedBox(height: 4);
const verticalMargin5 = SizedBox(height: 5);
const verticalMargin6 = SizedBox(height: 6);
const verticalMargin8 = SizedBox(height: 8);
const verticalMargin10 = SizedBox(height: 10);
const verticalMargin12 = SizedBox(height: 12);
const verticalMargin16 = SizedBox(height: 16);
const verticalMargin18 = SizedBox(height: 18);
const verticalMargin20 = SizedBox(height: 20);
const verticalMargin24 = SizedBox(height: 24);
const verticalMargin30 = SizedBox(height: 30);
const verticalMargin32 = SizedBox(height: 32);
const verticalMargin36 = SizedBox(height: 32);
const verticalMargin48 = SizedBox(height: 48);
const verticalMargin50 = SizedBox(height: 50);
const verticalMargin64 = SizedBox(height: 64);

const sliverVerticalMargin4 = SliverToBoxAdapter(child: SizedBox(height: 4));
const sliverVerticalMargin8 = SliverToBoxAdapter(child: SizedBox(height: 8));
const sliverVerticalMargin12 = SliverToBoxAdapter(child: SizedBox(height: 12));
const sliverVerticalMargin16 = SliverToBoxAdapter(child: SizedBox(height: 16));
const sliverVerticalMargin24 = SliverToBoxAdapter(child: SizedBox(height: 24));
const sliverVerticalMargin32 = SliverToBoxAdapter(child: SizedBox(height: 32));
const sliverVerticalMargin48 = SliverToBoxAdapter(child: SizedBox(height: 48));

// PADDING
const emptyPadding = EdgeInsets.zero;

const contentPadding = EdgeInsets.all(12);
const horizontalScreenEdgePadding = EdgeInsets.symmetric(horizontal: 16);

const allPadding1 = EdgeInsets.all(1);
const allPadding4 = EdgeInsets.all(4);
const allPadding6 = EdgeInsets.all(6);
const allPadding8 = EdgeInsets.all(8);
const allPadding10 = EdgeInsets.all(10);
const allPadding12 = EdgeInsets.all(12);
const allPadding14 = EdgeInsets.all(14);
const allPadding16 = EdgeInsets.all(16);
const allPadding20 = EdgeInsets.all(20);
const allPadding24 = EdgeInsets.all(24);
const allPadding32 = EdgeInsets.all(32);
const allPadding48 = EdgeInsets.all(48);

const leftPadding4 = EdgeInsets.only(left: 4);
const leftPadding8 = EdgeInsets.only(left: 8);
const leftPadding10 = EdgeInsets.only(left: 10);
const leftPadding12 = EdgeInsets.only(left: 12);
const leftPadding16 = EdgeInsets.only(left: 16);
const leftPadding20 = EdgeInsets.only(left: 20);
const leftPadding24 = EdgeInsets.only(left: 24);
const leftPadding30 = EdgeInsets.only(left: 30);
const leftPadding32 = EdgeInsets.only(left: 32);
const leftPadding40 = EdgeInsets.only(left: 40);
const leftPadding48 = EdgeInsets.only(left: 48);

const topPadding1 = EdgeInsets.only(top: 1);
const topPadding2 = EdgeInsets.only(top: 2);
const topPadding4 = EdgeInsets.only(top: 4);
const topPadding8 = EdgeInsets.only(top: 8);
const topPadding10 = EdgeInsets.only(top: 10);
const topPadding12 = EdgeInsets.only(top: 12);
const topPadding16 = EdgeInsets.only(top: 16);
const topPadding20 = EdgeInsets.only(top: 20);
const topPadding24 = EdgeInsets.only(top: 24);
const topPadding32 = EdgeInsets.only(top: 32);
const topPadding48 = EdgeInsets.only(top: 48);

const rightPadding4 = EdgeInsets.only(right: 4);
const rightPadding8 = EdgeInsets.only(right: 8);
const rightPadding10 = EdgeInsets.only(right: 10);
const rightPadding12 = EdgeInsets.only(right: 12);
const rightPadding16 = EdgeInsets.only(right: 16);
const rightPadding20 = EdgeInsets.only(right: 20);
const rightPadding24 = EdgeInsets.only(right: 24);
const rightPadding32 = EdgeInsets.only(right: 32);
const rightPadding48 = EdgeInsets.only(right: 48);

const bottomPadding1 = EdgeInsets.only(bottom: 1);
const bottomPadding2 = EdgeInsets.only(bottom: 2);
const bottomPadding4 = EdgeInsets.only(bottom: 4);
const bottomPadding8 = EdgeInsets.only(bottom: 8);
const bottomPadding10 = EdgeInsets.only(bottom: 10);
const bottomPadding12 = EdgeInsets.only(bottom: 12);
const bottomPadding16 = EdgeInsets.only(bottom: 16);
const bottomPadding20 = EdgeInsets.only(bottom: 20);
const bottomPadding24 = EdgeInsets.only(bottom: 24);
const bottomPadding32 = EdgeInsets.only(bottom: 32);
const bottomPadding36 = EdgeInsets.only(bottom: 36);
const bottomPadding48 = EdgeInsets.only(bottom: 48);

const horizontalPadding2 = EdgeInsets.symmetric(horizontal: 2);
const horizontalPadding4 = EdgeInsets.symmetric(horizontal: 4);
const horizontalPadding5 = EdgeInsets.symmetric(horizontal: 5);
const horizontalPadding8 = EdgeInsets.symmetric(horizontal: 8);
const horizontalPadding10 = EdgeInsets.symmetric(horizontal: 10);
const horizontalPadding12 = EdgeInsets.symmetric(horizontal: 12);
const horizontalPadding15 = EdgeInsets.symmetric(horizontal: 15);
const horizontalPadding16 = EdgeInsets.symmetric(horizontal: 16);
const horizontalPadding20 = EdgeInsets.symmetric(horizontal: 20);
const horizontalPadding24 = EdgeInsets.symmetric(horizontal: 24);
const horizontalPadding30 = EdgeInsets.symmetric(horizontal: 30);
const horizontalPadding32 = EdgeInsets.symmetric(horizontal: 32);
const horizontalPadding36 = EdgeInsets.symmetric(horizontal: 36);
const horizontalPadding40 = EdgeInsets.symmetric(horizontal: 40);
const horizontalPadding48 = EdgeInsets.symmetric(horizontal: 48);
const horizontalPadding64 = EdgeInsets.symmetric(horizontal: 64);
const horizontalPadding82 = EdgeInsets.symmetric(horizontal: 82);
const horizontalPadding106 = EdgeInsets.symmetric(horizontal: 106);

const verticalPadding2 = EdgeInsets.symmetric(vertical: 2);
const verticalPadding4 = EdgeInsets.symmetric(vertical: 4);
const verticalPadding6 = EdgeInsets.symmetric(vertical: 6);
const verticalPadding8 = EdgeInsets.symmetric(vertical: 8);
const verticalPadding10 = EdgeInsets.symmetric(vertical: 10);
const verticalPadding12 = EdgeInsets.symmetric(vertical: 12);
const verticalPadding15 = EdgeInsets.symmetric(vertical: 15);
const verticalPadding16 = EdgeInsets.symmetric(vertical: 16);
const verticalPadding20 = EdgeInsets.symmetric(vertical: 20);
const verticalPadding24 = EdgeInsets.symmetric(vertical: 24);
const verticalPadding32 = EdgeInsets.symmetric(vertical: 32);
const verticalPadding48 = EdgeInsets.symmetric(vertical: 48);
const verticalPadding106 = EdgeInsets.symmetric(vertical: 106);

const emptyWidget = SizedBox();
const emptyWideWidget = SizedBox(width: double.infinity);
const emptyIcon = SizedBox.square(dimension: 24);
const emptyInteractive = SizedBox(width: kMinInteractiveDimension);
const spacer = Spacer();

// DURATIONS
const animationDuration = Duration(milliseconds: 246);
