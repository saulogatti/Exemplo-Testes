enum ContentType {
  json('application/json'),
  formUrlEncoded('application/x-www-form-urlencoded'),
  multipartFormData('multipart/form-data'),
  plainText('text/plain');

  final String value;

  const ContentType(this.value);
}
