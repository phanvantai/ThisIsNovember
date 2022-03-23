import 'package:this_is_november_blog/web/models/post.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class PageModel {
  static int limitedLength = 7;
  final int index;
  int? previous;
  int? next;
  final List<PostModel> list;
  int count() {
    return list.length;
  }

  PageModel(this.index, this.list);

  static List<PostModel> sample = [
    PostModel(
        title: listItemTitleText,
        content: 'assets/posts/1.md',
        category: 'Technology',
        id: '1',
        date: '23 September 2020',
        description: listItemPreviewText,
        image: "assets/images/paper_flower_overhead_bw_w1080.jpg"),
    PostModel(
        date: '21 August  2020',
        content: 'assets/posts/1.md',
        category: 'Books',
        id: '2',
        title: listItemTitleText,
        description: listItemPreviewText,
        image: "assets/images/iphone_cactus_tea_overhead_bw_w1080.jpg"),
    PostModel(
        date: '23 September 2020',
        content: 'assets/posts/1.md',
        category: 'Films',
        id: '3',
        title: listItemTitleText,
        description: listItemPreviewText,
        image: "assets/images/typewriter_overhead_bw_w1080.jpg"),
  ];
}
