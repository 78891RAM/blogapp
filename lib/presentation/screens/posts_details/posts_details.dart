// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'postdetails_import.dart';

@RoutePage()
class PostsDetails extends StatelessWidget {
  const PostsDetails({
    Key? key,
    required this.post,
    required this.imagePath,
  }) : super(key: key);
  final Post post;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalate.primary,
        foregroundColor: Colors.white,
        // automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.arrow_back),
        // ),
        title: post.title!.text.ellipsis.make(),
      ),
      body: ListView(
        children: [
          Hero(
            tag: Key(post.id.toString()),
            child: CachedNetworkImage(
              imageUrl: imagePath,
              // height: 120.h,
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                10.h.heightBox,
                post.title!.text.bold.xl.make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.remove_red_eye_outlined),
                    8.h.widthBox,
                    " ${post.views!} Views".text.make(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                    ),
                    " 0 ".text.make(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                      ),
                    ),
                    " 0 ".text.make(),
                  ],
                ),
                HtmlWidget(post.body!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
