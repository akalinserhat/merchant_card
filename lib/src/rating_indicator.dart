part of '../merchant_card.dart';

class RatingIndicator extends StatelessWidget {
  final double width;
  final double rating;
  // final Color backgroundColor;

  const RatingIndicator({
    Key? key,
    required this.rating,
    this.width = 65,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 3),
      height: width / 2,
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).unselectedWidgetColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 10,
                blurRadius: 50,
                offset: Offset(1, 1)),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
                fontSize: width / 3,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
