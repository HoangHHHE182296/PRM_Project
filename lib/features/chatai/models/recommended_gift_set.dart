class RecommendedGiftSet {
  final String? giftSetName;
  final String? description;
  final double? totalEstimatedPrice;
  final RecommendedGiftBox? box;
  final List<RecommendedGiftItem>? items;

  const RecommendedGiftSet({
    this.giftSetName,
    this.description,
    this.totalEstimatedPrice,
    this.box,
    this.items,
  });
}

class RecommendedGiftBox {
  final String? name;
  final String? theme;
  final String? imageUrl;
  final double? price;

  const RecommendedGiftBox({this.name, this.theme, this.imageUrl, this.price});
}

class RecommendedGiftItem {
  final String? name;
  final String? material;
  final String? thumbnailUrl;
  final int? quantity;
  final double? price;

  const RecommendedGiftItem({
    this.name,
    this.material,
    this.thumbnailUrl,
    this.quantity,
    this.price,
  });
}
