import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final int index;
  const CustomListTile({super.key,required this.index});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Title ${widget.index}"),
      subtitle: Text("Description"),
      leading: Icon(Icons.home),
      trailing: Icon(Icons.skip_next),
    );
  }
}
