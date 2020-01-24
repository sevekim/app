//Model to be used for Google Location search result
class AutoCompleteItem {
  String id;
  String fullName;
  int offset;
  int length;
  String displayName;

  AutoCompleteItem({
    this.id,
    this.displayName,
    this.fullName,
    this.length,
    this.offset
  })
}
