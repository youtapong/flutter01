import 'package:flutter/material.dart';
import 'package:flutter_learn/models/product_model.dart';
import 'package:flutter_learn/widgets/menu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

List<Data> data = [];

class _ProductPageState extends State<ProductPage> {
  Future<void> getData() async {
    var url = 'https://api.codingthailand.com/api/course';
    var response = await http.get(url);
    //print(response.body);
    //print(json.decode(response.body));
    /// นำไปใส่ใน model product
    final Product product = Product.fromJson(json.decode(response.body));
    print(product.data);
    setState(() {
      data = product.data;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          drawer: Menu(), //// สามขีด
          appBar: AppBar(
            title: Text('สินค้า'),
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'productStack/detail');
                  },
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(data[index].picture),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  title: Text('${data[index].title}'),
                  subtitle: Text('${data[index].detail}'),
                  trailing: Chip(
                    label: Text('${data[index].view}'),
                    backgroundColor: Colors.red[200],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: data.length)),
    );
  }
}
