import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 60,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                    child: BigText(
                      text: "Chinese Side",
                      size: Dimensions.font26,
                    ),
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food0.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Column(
                    children: [
                      Container(
                        child: ExpandableTextWidget(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vestibulum nisl nibh. Duis cursus viverra sapien, non mattis libero interdum ut. Morbi pharetra, lorem vitae mattis tincidunt, nulla est elementum diam, non porttitor erat diam quis tortor. Praesent facilisis consequat nisi id consequat. Aenean id elit ligula. Nullam sed egestas odio, tincidunt mattis leo. Praesent in est mattis, placerat ex a, vestibulum mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at eleifend purus. Aenean tempor dolor non massa malesuada, id malesuada sem consectetur. Vivamus id enim a orci bibendum euismod eu posuere diam. Cras a tempor neque, at iaculis neque. Nullam ac semper nisi.Mauris ut aliquam nibh. Nam elementum dolor sed sagittis porttitor. Praesent ac lectus at quam tincidunt blandit a consectetur velit. Nullam viverra vehicula nibh. Curabitur fermentum pellentesque nisl eget vehicula. Integer non auctor est. Phasellus semper odio risus, et eleifend felis porttitor vitae. In sit amet elit dui. Ut euismod ipsum nec sem laoreet bibendum. Nam ut ornare eros, scelerisque blandit nibh. ed iaculis dolor a aliquam pharetra. Suspendisse potenti. Nunc suscipit urna urna, sed finibus ipsum sagittis a. Maecenas tincidunt massa eros, ac euismod ipsum gravida at. Praesent eu nunc ex. Fusce iaculis dictum molestie. Donec tellus erat, varius in mattis eu, pulvinar sed enim. Phasellus congue consequat consequat. Suspendisse vel mollis nisl. Phasellus ornare magna vel massa auctor, ut ultricies purus iaculis. Morbi magna lacus, laoreet ac vestibulum quis, elementum in diam. In bibendum vestibulum lorem, in volutpat ipsum malesuada in. Vestibulum porta, lorem et convallis venenatis, neque ante aliquet odio, id dictum orci ex vitae magna. Ut elementum nisi vel metus maximus gravida. Mauris imperdiet rutrum ex ut tempor. Etiam sodales velit ac ligula ornare ornare. Donec euismod elit quis pellentesque congue. Donec ipsum ligula, condimentum ut posuere vitae, placerat non nunc. Sed tempor justo ac enim vestibulum laoreet. Suspendisse eu tellus luctus, varius nisi sit amet, finibus est. Sed ornare tristique tellus. Donec eleifend purus et blandit porta. In hac habitasse platea dictumst. Aenean tempor magna erat, nec tincidunt ipsum laoreet a. Ut semper posuere elit eu consequat. Quisque sollicitudin arcu elit, id rutrum neque interdum eu. Sed posuere justo eu mi luctus, finibus ullamcorper lorem commodo. Sed non purus erat"),
                      )
                    ],
                  )),
            )
          ],
        ),
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeigthBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              right: Dimensions.width20,
              left: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
