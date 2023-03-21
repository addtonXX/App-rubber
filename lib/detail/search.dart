

import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/Rubber.dart';
import 'package:flutter_application_1/detail/rubber_list.dart';

class MyWidget extends StatefulWidget {
 const MyWidget({
    Key? key,required rubber
  }) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = TextEditingController();
  List<Rubber> rubbers = allRubbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ค้นหาโรคต้นยางพารา'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'โรค',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              onChanged: searchRubber,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: rubbers.length,
              itemBuilder: (context, index) {
                final rubber = rubbers[index];

                return ListTile(
                  subtitle: Text(rubber.subtitle),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(rubber.urlImage)),
                  title: Text(rubber.title),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RubberPage(rubber: rubber),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void searchRubber(String query) {
    final suggestions = allRubbers.where((rubber) {
      final rubberTitle = rubber.title.toLowerCase();
      final input = query.toLowerCase();

      return rubberTitle.contains(input);
    }).toList();

    setState(() => rubbers = suggestions);
  }
}
