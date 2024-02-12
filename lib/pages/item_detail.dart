import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        elevation: 0,
        title: const Text(
          'Cappucino',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(Icons.arrow_back),
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),


      backgroundColor: Colors.yellow[50],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom:15),
              child: Image.asset(
                "lib/images/1.jpg",
                height: 300,
              ),
            ),
            const Text(
              "BEST COFFEE",
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 1,
                color: Colors.grey
              ),
            ),
            const Text(
              "Global Explorer's Blend",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2)
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.minus,
                        size: 18,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15,),

                      Text(
                        "2",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),

                      SizedBox(width: 15,),
                      Icon(
                        CupertinoIcons.plus,
                        size: 18,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const Text(
                  "RS 675.00",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "This coffee combines beans from diverse regions, offering a passport to a world of taste – from the bright acidity of African beans to the earthy undertones of South American varieties.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Sugar Level ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.2)
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.minus,
                        size: 18,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15,),

                      Text(
                        "3",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                      SizedBox(width: 15,),
                      Icon(
                        CupertinoIcons.plus,
                        size: 18,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const Text(
                  " / Spoons",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50,),
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Text(
                      "Add to cart",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),


          ],

        ),
      ),
    );
  }
}
