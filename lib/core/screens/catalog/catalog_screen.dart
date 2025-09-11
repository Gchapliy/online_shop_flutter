import 'package:elektrostok/core/constants/constants.dart';
import 'package:elektrostok/core/screens/catalog/components/catalog_header.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(bottom: false, child: Column(children: [CatalogHeader()])),
    );
  }
}
