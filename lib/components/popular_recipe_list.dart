import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes/models/recipe.dart';

class PopularRecipeList extends StatefulWidget {
  PopularRecipeList({Key? key}) : super(key: key);

  @override
  State<PopularRecipeList> createState() => _PopularRecipeListState();
}

class _PopularRecipeListState extends State<PopularRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 98,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 73,
                  height: 53.43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${recipes[index].recipeImage}',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18.56),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recipes[index].recipeName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '${recipes[index].recipeMaker} \'s recipe',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        recipes[index].recipeMaker[0],
                        style: TextStyle(
                          color: recipes[index].startColor,
                        ),
                      ),
                      backgroundColor: recipes[index].endColor,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/icon-share-grey.svg'),
                        SizedBox(width: 7.65),
                        SvgPicture.asset('assets/svg/icon-bookmark-grey.svg'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
