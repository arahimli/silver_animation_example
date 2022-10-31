part of 'page.dart';


class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: _PageHeader(
                maxHeaderExtent: size.width * 8 / 10,
              ),
              pinned: true,
              floating: false,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(aDataItem.description + aDataItem.description  + aDataItem.description ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class _PageHeader extends SliverPersistentHeaderDelegate{
  final double maxHeaderExtent;

  _PageHeader({required this.maxHeaderExtent, });
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size  = MediaQuery.of(context).size;
    final percent = shrinkOffset / maxHeaderExtent;
    final maxImageSize = size.width / 2.3;
    final currentImageSize  = (maxImageSize * (1 - percent)).clamp(_minImageSize, maxImageSize);
    final titleSize = (_maxTitleSize * (1-percent)).clamp(_minTitleSize, _maxTitleSize);
    final subTitleSize = (_maxSubTitleSize * (1-percent)).clamp(_minSubTitleSize, _maxSubTitleSize);
    const textMovement = 80;
    final maxMargin = size.width / 16;
    final leftTextMargin = maxMargin + (textMovement * (percent));
    final leftMarginCharacter = maxHeaderExtent / 2 + size.width / 8;
    return Container(
      color: _headerColor,
      child: Stack(
        children: [
          Positioned(
            top: 30.0,
            left: leftTextMargin,
            height: maxImageSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(aDataItem.ownerName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: titleSize.toDouble(),
                    letterSpacing: -.5
                  ),
                ),
                Text(aDataItem.pokemonName,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: subTitleSize.toDouble(),
                    letterSpacing: -.5,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: (leftMarginCharacter * (1-percent)).clamp(20, leftMarginCharacter),
            child: Transform.rotate(
                angle: vector.radians(360 * percent),
                child: Image.asset(aDataItem.pokemonImage, height: currentImageSize, width: currentImageSize,)
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: 20.0,
            child: Image.asset(aDataItem.ownerImage, height: currentImageSize, width: currentImageSize,),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 20,
              width: size.width,
              decoration: const BoxDecoration(
                  color: _backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                  )
              ),
            ),
          ),

        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeaderExtent;

  @override
  // TODO: implement minExtent
  double get minExtent => _minHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}