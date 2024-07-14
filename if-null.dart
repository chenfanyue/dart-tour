void main() {
  String playerName(String? name) => name ?? 'fallback';
  print(playerName(null));
}
