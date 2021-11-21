class Currency {
  final String id;
  final String logoURL;
  final String name;
  final double price;
  final double oneHourChange;
  final double oneDayChange;
  final double marketCap;
  final int rank;
  final int rankDelta;
  const Currency(
      {this.id,
      this.logoURL,
      this.name,
      this.price,
      this.oneHourChange,
      this.oneDayChange,
      this.marketCap,
      this.rank,
      this.rankDelta});

  Currency.fromJson(Map<String, dynamic> item)
      : this.id = item['id'],
        this.name = item['name'],
        this.price = double.parse(item['price']),
        this.logoURL = item['logo_url'],
        this.oneDayChange = double.parse(item["1d"]["price_change_pct"]),
        this.oneHourChange = double.parse(item["1h"]["price_change_pct"]),
        this.rank = int.parse(item["rank"]),
        this.rankDelta = int.parse(item['rank_delta']),
        this.marketCap = double.parse(item['market_cap']);
}
