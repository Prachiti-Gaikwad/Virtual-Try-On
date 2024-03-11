import 'package:badges/badges.dart' as badge;
import 'package:finalfinalfinalfinal/helper/db_helper.dart';
import 'package:finalfinalfinalfinal/model/cart_model.dart';
import 'package:finalfinalfinalfinal/provider/cartprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cart_screen.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<String> productName = [
    'Spec1',
    'Spec2',
    'Spec3',
    'Spec4',
    'Spec5',
    'Spec6',
    'Spec7',
  ];
  List<String> productUnit = [
    'Click to TryOn',
    'Click to TryOn',
    'Click to TryOn',
    'Click to TryOn',
    'Click to TryOn',
    'Click to TryOn',
    'Click to TryOn',
  ];
  List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
  List<String> productImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg2V-RW9blstPAwMz0-Jvef0wf_xR0bfshtQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9NcM9AuPDmkkwxEtm5y3JDL_H65Zl4cc0cpIY2jbZg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiYX3HmKMU-ErPkUM1Oft1w7QdCOKYDWRAHA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoZp_PUzvw3xgxQ5GcnC92TzVGW0iv-7tJ4w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB1-cjdDmbaa3WDvbooBNmq4ep9mCMojlAYw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnDX3iPHxEuSCBCw_rszg1bQO6s9eMGmrH-fpzS2hoIw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP4OinkISS5ZojpeHfXJU5zAGEkwNPDogj0GhGx2BN9w&s',
  ];

  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Future<void> _launchUrl(String url) async {
      final Uri _url = Uri.parse(url);
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $url');
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Spectacles List'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Center(
              child: badge.Badge(
                showBadge: true,
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value, child) {
                    return Text(value.getCounter().toString(),
                        style: TextStyle(color: Colors.white));
                  },
                ),
                // animationType: BadgeAnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
          SizedBox(width: 20.0)
        ],
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: productName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                      if (index == 0) {
                        _launchUrl('https://www.instagram.com/ar/1432409943982050/?ch=MDk4Y2NhMmE3YWI4OWJlNzk1ZGY1ZTg1YWNhYmI1NjU%3D');
                      } else if (index == 1) {
                        _launchUrl('https://www.instagram.com/ar/342882861580262/?ch=NjI0MDk3ZTI0NmEzZTcyZGZmMDI3OGQ3NGYyNDg0OTE%3D');
                      }
                      else if (index==2){
                        _launchUrl('https://www.instagram.com/ar/299748766303584/?ch=ZmM5NzZiNTg1ZWFmNjQ1NmI1ODY2ODg0NzI0YmQzODE%3D');
                      }
                      else if (index==3){
                        _launchUrl('https://www.instagram.com/ar/793827435847768/?ch=Mjk0NTVkMDZhZTgwZDU2YzY3NjJjMTVmOWM2YmExZmM%3D');
                      }
                      else if(index==4){
                        _launchUrl('https://www.instagram.com/ar/360509309728022/?ch=ZmFlN2E1MWMxYWNjMTkwYTZjMzVlYTk4MjI1NGJkMWU%3D');
                      }
                      else if(index==5){
                        _launchUrl('https://www.instagram.com/ar/743884870886848/?ch=Y2U0MTI5OTVjNjNjNDlkMzk2OWE4ZGE3MmZjNDUwNzM%3D');
                      }
                      else if(index==6){
                        _launchUrl('https://www.instagram.com/ar/716680313660970/?ch=MDQzN2ZlMTcxMjc2OTU0YmQ5OWM3NjNhNzQ0NDAwYzY%3D');
                      }
                      // You can add more conditions for other items if needed.
                    },
                    child:Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ClipOval(
                              child: Image(
                                image: NetworkImage(
                                    productImage[index].toString()),
                                width: 120,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                              // )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString()+ " \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" + "Rs" + productPrice[index].toString() +"\n"+"\n"+"\t\t\t\t\t\t\t"+
                                    productUnit[index].toString()
                                        ,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        print(index);
                                        print(index);
                                        print(productName[index].toString());
                                        print(productPrice[index].toString());
                                        print(productPrice[index]);
                                        print('1');
                                        print(productUnit[index].toString());
                                        print(productImage[index].toString());

                                        dbHelper!
                                            .insert(Cart(
                                                id: index,
                                                productId: index.toString(),
                                                productName: productName[index]
                                                    .toString(),
                                                initialPrice:
                                                    productPrice[index],
                                                productPrice:
                                                    productPrice[index],
                                                quantity: 1,
                                                unitTag: productUnit[index]
                                                    .toString(),
                                                image: productImage[index]
                                                    .toString()))
                                            .then((value) {
                                          cart.addTotalPrice(double.parse(
                                              productPrice[index].toString()));
                                          cart.addCounter();

                                          final snackBar = SnackBar(
                                            backgroundColor: Colors.green,
                                            content: Text(
                                                'Product is added to cart'),
                                            duration: Duration(seconds: 1),
                                          );

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        }).onError((error, stackTrace) {
                                          print("error" + error.toString());
                                          final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text(
                                                  'Product is already added in cart'),
                                              duration: Duration(seconds: 1));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Text(
                                            'Add to cart',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),

                                      ),
                                    ),
                                  )
                                ]),
                          )
                          // );
                        ])));
                  }),
            ),

            //  ListView.builder(
            //     itemCount: productName.length,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Image(
            //                     height: 100,
            //                     width: 100,
            //                     image: NetworkImage(
            //                         productImage[index].toString()),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Expanded(
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           productName[index].toString(),
            //                           style: TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.w500),
            //                         ),
            //                         SizedBox(
            //                           height: 5,
            //                         ),
            //                         Text(
            //                           productUnit[index].toString() +
            //                               " " +
            //                               r"$" +
            //                               productPrice[index].toString(),
            //                           style: TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.w500),
            //                         ),
            //                         SizedBox(
            //                           height: 5,
            //                         ),
            //                         Align(
            //                           alignment: Alignment.centerRight,
            //                           child: InkWell(
            //                             onTap: () {
            //                               print(index);
            //                               print(index);
            //                               print(productName[index].toString());
            //                               print(productPrice[index].toString());
            //                               print(productPrice[index]);
            //                               print('1');
            //                               print(productUnit[index].toString());
            //                               print(productImage[index].toString());

            //                               dbHelper!
            //                                   .insert(Cart(
            //                                       id: index,
            //                                       productId: index.toString(),
            //                                       productName:
            //                                           productName[index]
            //                                               .toString(),
            //                                       initialPrice:
            //                                           productPrice[index],
            //                                       productPrice:
            //                                           productPrice[index],
            //                                       quantity: 1,
            //                                       unitTag: productUnit[index]
            //                                           .toString(),
            //                                       image: productImage[index]
            //                                           .toString()))
            //                                   .then((value) {
            //                                 cart.addTotalPrice(double.parse(
            //                                     productPrice[index]
            //                                         .toString()));
            //                                 cart.addCounter();

            //                                 final snackBar = SnackBar(
            //                                   backgroundColor: Colors.green,
            //                                   content: Text(
            //                                       'Product is added to cart'),
            //                                   duration: Duration(seconds: 1),
            //                                 );

            //                                 ScaffoldMessenger.of(context)
            //                                     .showSnackBar(snackBar);
            //                               }).onError((error, stackTrace) {
            //                                 print("error" + error.toString());
            //                                 final snackBar = SnackBar(
            //                                     backgroundColor: Colors.red,
            //                                     content: Text(
            //                                         'Product is already added in cart'),
            //                                     duration: Duration(seconds: 1));

            //                                 ScaffoldMessenger.of(context)
            //                                     .showSnackBar(snackBar);
            //                               });
            //                             },
            //                             child: Container(
            //                               height: 35,
            //                               width: 100,
            //                               decoration: BoxDecoration(
            //                                   color: Colors.green,
            //                                   borderRadius:
            //                                       BorderRadius.circular(5)),
            //                               child: const Center(
            //                                 child: Text(
            //                                   'Add to cart',
            //                                   style: TextStyle(
            //                                       color: Colors.white),
            //                                 ),
            //                               ),
            //                             ),
            //                           ),
            //                         )
          )
        ],
      ),
    );
  }
}