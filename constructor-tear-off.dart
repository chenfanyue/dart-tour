void main() {
  var charCodes = [97, 98, 99];
  // Use a tear-off for a named constructor:
  var strings = charCodes.map(String.fromCharCode);
  print(strings); // (a, b, c)

  // Use a tear-off for an unnamed constructor:
  var buffers = charCodes.map(StringBuffer.new);
  print(buffers); // (97, 98, 99)
}
