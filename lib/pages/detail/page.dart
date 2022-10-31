import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'package:silver_animation_example/models/pokemon_owner.dart';


part 'view.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}


const _minHeaderExtent = 120.0;
const _minImageSize = 60.0;
const _maxTitleSize = 25;
const _minTitleSize = 18;
const _maxSubTitleSize = 20;
const _minSubTitleSize = 14;
const _backgroundColor = Color(0xFFFFFFFF);
const _headerColor = Color(0xFFECECEA);
