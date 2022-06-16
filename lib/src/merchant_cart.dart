part of '../merchant_card.dart';

class MerchantCard extends StatelessWidget {
  final double width;
  final Image image;
  final String merchantTitle;
  final String merchantDescription;
  final double? raiting;

  const MerchantCard(
      {Key? key,
      this.width = 300,
      required this.image,
      required this.merchantTitle,
      required this.merchantDescription,
      this.raiting})
      : super(key: key);

  Widget _imageArea(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        image,
        const Positioned(
            right: 10, top: 10, child: RatingIndicator(rating: 5.0)),
      ],
    );
  }

  Widget _descriptionArea(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              merchantTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(merchantDescription),
          ),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: _imageArea(context)),
        Expanded(flex: 1, child: _descriptionArea(context)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: SizedBox(
          width: width,
          height: width / 1.5,
          child: _content(context),
        ),
      ),
    );
  }
}
