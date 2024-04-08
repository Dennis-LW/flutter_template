class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}

// Reference https://picsum.photos/?source=post_page-----692ce98d6b1e--------------------------------
final List<Post> posts = [
  const Post(
    title: 'Forest',
    author: 'Paul Jarvis',
    imageUrl: 'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
  ),
  const Post(
    title: 'Laptop',
    author: 'Alejandro Escamilla',
    imageUrl: 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc',
  ),
  const Post(
    title: 'River',
    author: 'Jerry Adney',
    imageUrl: 'https://fastly.picsum.photos/id/28/4928/3264.jpg?hmac=GnYF-RnBUg44PFfU5pcw_Qs0ReOyStdnZ8MtQWJqTfA',
  ),
  const Post(
    title: 'Mountain',
    author: 'Go Wild',
    imageUrl: 'https://fastly.picsum.photos/id/29/4000/2670.jpg?hmac=rCbRAl24FzrSzwlR5tL-Aqzyu5tX_PA95VJtnUXegGU',
  ),
  const Post(
    title: 'Coastal',
    author: 'Yoni Kaplan-Nadel',
    imageUrl: 'https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g',
  ),
];
