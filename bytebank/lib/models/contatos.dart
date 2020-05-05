class Contato {
  final String name;
  final int accountNumber;

  Contato(
    this.name,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'contato{name: $name, accountNumber: $accountNumber}';
  }
}
