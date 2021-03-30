import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'dart:html';
import 'package:firebase/firebase.dart' as fb;
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  String category;
  String measurement;
  String quantity;
  TextEditingController pname = TextEditingController();
  TextEditingController pdesc = TextEditingController();
  TextEditingController pprice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Admin Page'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: showmodel,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  showmodel() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: StatefulBuilder(
            builder: (context, setstate) {
              return Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: pname,
                          decoration: InputDecoration(
                            labelText: 'Product Name',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: pdesc,
                          decoration: InputDecoration(
                            labelText: 'Product Description',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: pprice,
                          decoration: InputDecoration(
                            labelText: 'Product Price',
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                            ),
                            value: category,
                            hint: Text('Choose Category'),
                            items: [
                              DropdownMenuItem(
                                child: Text('Choose Category'),
                                // value: 'Choose Category',
                              ),
                              DropdownMenuItem(
                                child: Text('Diary'),
                                value: 'Diary',
                              ),
                              DropdownMenuItem(
                                child: Text('Curd'),
                                value: 'Curd',
                              ),
                              DropdownMenuItem(
                                child: Text('Vegetable'),
                                value: 'Vegetable',
                              ),
                              DropdownMenuItem(
                                child: Text('Fruits'),
                                value: 'Fruits',
                              ),
                            ],
                            onChanged: (val) {
                              setstate(() {
                                category = val;
                              });
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                            ),
                            value: measurement,
                            hint: Text('Choose Measurement'),
                            items: [
                              DropdownMenuItem(
                                child: Text('Choose Measurement'),
                                // value: 'Choose Category',
                              ),
                              DropdownMenuItem(
                                child: Text('Kilogram'),
                                value: 'Kilogram',
                              ),
                              DropdownMenuItem(
                                child: Text('Litre'),
                                value: 'Litre',
                              ),
                            ],
                            onChanged: (val) {
                              setstate(() {
                                measurement = val;
                              });
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                            ),
                            value: quantity,
                            hint: Text('Choose Quantity'),
                            items: [
                              DropdownMenuItem(
                                child: Text('Choose Quantity'),
                                // value: 'Choose Category',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('100 grams'),
                                value: '100 grams',
                              )
                                  : DropdownMenuItem(
                                child: Text('100 ml'),
                                value: '100 ml',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('200 grams'),
                                value: '200 grams',
                              )
                                  : DropdownMenuItem(
                                child: Text('200 ml'),
                                value: '200 ml',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('250 grams'),
                                value: '250 grams',
                              )
                                  : DropdownMenuItem(
                                child: Text('250 ml'),
                                value: '250 ml',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('500 grams'),
                                value: '500 grams',
                              )
                                  : DropdownMenuItem(
                                child: Text('500 ml'),
                                value: '500 ml',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('1 kg'),
                                value: '1 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('1 L'),
                                value: '1 L',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('2 kg'),
                                value: '2 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('2 L'),
                                value: '2 L',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('3 kg'),
                                value: '3 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('3 L'),
                                value: '3 L',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('4 kg'),
                                value: '4 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('4 L'),
                                value: '4 L',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('5 kg'),
                                value: '5 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('5 L'),
                                value: '5 L',
                              ),
                              measurement == 'Kilogram'
                                  ? DropdownMenuItem(
                                child: Text('10 kg'),
                                value: '10 kg',
                              )
                                  : DropdownMenuItem(
                                child: Text('10 L'),
                                value: '10 L',
                              ),
                            ],
                            onChanged: (val) {
                              setstate(() {
                                quantity = val;
                                print(measurement);
                              });
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10.0)),
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            onPressed: () {
                              uploadToStorage(pname.text);
                            },
                            child: Text(
                              'Upload  Image',
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Theme.of(context).primaryColor,
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          FlatButton(
                            color: Theme.of(context).primaryColor,
                            onPressed: () async {
                              await FirebaseFirestore.instance
                                  .collection(category)
                                  .doc(pname.text)
                                  .set({
                                'name': pname.text,
                                'price': pprice.text,
                                'description': pdesc.text,
                                'quantity': quantity
                              }, SetOptions(merge: true));
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void uploadImage({@required Function(File file) onSelected}) {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files.first;
      final reader = FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) {
        onSelected(file);
        showDialog(
            context:context,
            builder: (BuildContext context) {
              return
                AlertDialog(content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [CircularProgressIndicator(),
                      Text('Loading...')
                    ]
                ),);

            }
        );
        print('done');
      });
    });
  }

  void uploadToStorage(fileName) {
    final dateTime = DateTime.now();
    final path = '$fileName/$dateTime';
    uploadImage(onSelected: (file) async {
      await fb
          .storage()
          .refFromURL('gs://digimart-44fde.appspot.com/')
          .child(path)
          .put(file)
          .future
          .then((data) async {
        Uri uri = await data.ref.getDownloadURL();
        print(uri.toString());
        await FirebaseFirestore.instance
            .collection(category)
            .doc(pname.text)
            .set({'photo_url': uri.toString()});
      });
    });
  }
}