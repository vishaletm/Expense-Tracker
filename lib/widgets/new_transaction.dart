import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  final titleController=TextEditingController();
  final amountController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              /*onChanged: (valueOfTypeString){
                      titleInput=valueOfTypeString;
                    },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              /*onChanged: (valueOfTypeString){
                      amountInput=valueOfTypeString;
                    },*/
            ),
            FlatButton(
              onPressed: () {
                print(titleController.toString());

              },
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}