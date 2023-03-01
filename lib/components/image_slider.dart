import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const hello = [
      "https://cdn01.dailycaller.com/wp-content/uploads/2022/10/GettyImages-1255058181-scaled-e1666366463521.jpg"
    ];

    return ImageSlideshow(
        indicatorBackgroundColor: Colors.transparent,
        isLoop: true,
        width: MediaQuery.of(context).size.width,
        children: List<Container>.generate(hello.length, (index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(hello[index]),
                fit: BoxFit.fill,
              ),
            ),
          );
        }));
  }
}
