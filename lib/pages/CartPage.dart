import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/Cart_model.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Cart',
            style: GoogleFonts.adamina(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Consumer<CartModel>(builder: (context, value, index) {
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: value.CartItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey,
                        padding: EdgeInsets.all(12),
                        child: ListTile(
                          leading: Image.asset(value.CartItems[index][2]),
                          subtitle: Text(
                              '\$ ' + value.CartItems[index][1].toString()),
                          title: Text(value.CartItems[index][0]),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .removeItem(index);
                            },
                          ),
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          ' TOTAL Price',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          value.Total(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Text(
                            'Pay Now',
                            style: TextStyle(color: Colors.green[100]),
                          ),
                          Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.green[100],
                            size: 16,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer()
          ],
        );
      }),
    );
  }
}
