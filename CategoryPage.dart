// ignore: file_names
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:login/Pages/description.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;

  const CategoryPage({Key? key, this.title, this.image, this.tag})
      : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag!,
              child: Material(
                child: Container(
                  height: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image!), fit: BoxFit.cover)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ])),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FadeInUp(
                                    duration:
                                        const Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                                FadeInUp(
                                    duration:
                                        const Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                                FadeInUp(
                                    duration:
                                        const Duration(milliseconds: 1300),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: Text(
                              widget.title!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "New Product",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "View More",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 11,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDescriptionPage(
                              image: 'images/beauty-1.jpg',
                              title: 'Beauty',
                              price: '100\₹',
                              description:
                                  'Introducing our luxurious Beauty Elixir, a skincare essential for radiant and youthful skin. Infused with nourishing natural ingredients, this elixir deeply hydrates and revitalizes your skin, leaving it smooth and supple. Our formula is designed to reduce the appearance of fine lines and wrinkles, giving you a radiant and ageless complexion. Pamper your skin with the power of nature and unveil a more beautiful you. Elevate your beauty routine with our Beauty Elixir and experience the transformation today!',
                            ),
                          ),
                        );
                      },
                      child: makeProduct(
                        image: 'images/beauty-1.jpg',
                        title: 'Crop Seeds',
                        price: '100\₹',
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDescriptionPage(
                              image: 'images/clothes-1.jpg',
                              title: 'Clothes',
                              price: '100\₹',
                              description:
                                  'Introducing our latest addition to your wardrobe – the perfect all-season essential. Our elegant and versatile clothing line combines timeless style with exceptional comfort. Crafted from high-quality, breathable fabrics, this attire is designed for both casual and formal occasions. With a flattering fit and attention to detail, it exudes confidence and sophistication. Elevate your fashion game with this must-have addition to your collection.',
                            ),
                          ),
                        );
                      },
                      child: makeProduct(
                        image: 'images/clothes-1.jpg',
                        title: 'Clothes',
                        price: '100\₹',
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDescriptionPage(
                              image: 'images/glass.jpg',
                              title: 'Pottery',
                              price: '100\₹',
                              description:
                                  'Introducing our latest wearable glass technology, designed for the future. These innovative glasses seamlessly blend style and functionality, offering a sleek and modern look. With a high-resolution display, you can enjoy immersive augmented reality experiences, stay connected with hands-free communication, and access essential information at your fingertips. Lightweight and comfortable, these glasses are perfect for daily wear, making your life more convenient and stylish. Elevate your tech-savvy lifestyle with these cutting-edge wearable glasses.',
                            ),
                          ),
                        );
                      },
                      child: makeProduct(
                        image: 'images/glass.jpg',
                        title: 'Pottery',
                        price: '100\₹',
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDescriptionPage(
                                image: 'images/perfume.jpg',
                                title: 'Perfume',
                                price: '100\₹',
                                description:
                                    'Introducing our exquisite Eternal Elegance perfume, a fragrance that encapsulates timeless beauty and sophistication. This enchanting scent is a harmonious blend of delicate floral notes and woody undertones, creating an aroma that lingers gracefully throughout the day.The top notes of this perfume burst with the freshness of citrusy bergamot and zesty lemon, awakening your senses with a burst of energy. As the fragrance evolves, the heart reveals a bouquet of blooming jasmine, alluring rose, and velvety violet, adding a touch of floral romance.The base notes of rich cedarwood and warm vanilla lend a sensual depth to the perfume, leaving an irresistible and long-lasting trail.Eternal Elegance, the perfect choice for those who appreciate classic elegance and wish to leave a lasting impression wherever they go.'),
                          ),
                        );
                      },
                      child: makeProduct(
                        image: 'images/perfume.jpg',
                        title: 'Perfume',
                        price: '100\₹',
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDescriptionPage(
                              image: 'images/person.jpg',
                              title: 'Fertilizer',
                              price: '100\₹',
                              description: '',
                            ),
                          ),
                        );
                      },
                      child: makeProduct(
                        image: 'images/person.jpg',
                        title: 'Fertlizer',
                        price: '100\₹',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct({image, title, price}) {
    return Container(
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          )),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: Text(
                            price,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: Icon(
                              Icons.add_shopping_cart,
                              size: 18,
                              color: Colors.grey[700],
                            ),
                          )))
                ],
              ),
            ],
          ),
        ));
  }
}
