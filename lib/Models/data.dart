class Data {
  static List<Blog> posts = [
    Blog(
        image:
            'https://media.istockphoto.com/id/887987150/photo/blogging-woman-reading-blog.jpg?s=612x612&w=0&k=20&c=7SScR_Y4n7U3k5kBviYm3VwEmW4vmbngDUa0we429GA=',
        name: 'asmaa blog',
        desc: 'personal blog for asmaa')
  ];
}

class Blog {
  String image;
  String name;
  String desc;
  Blog({
    required this.image,
    required this.name,
    required this.desc,
  });
}
