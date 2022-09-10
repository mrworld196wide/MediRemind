import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine/screens/add_new_medicine/slider.dart';

class FormFields extends StatelessWidget {
  //final List<String> weightValues = ["pills", "ml", "mg"];
  final int howManyWeeks;
  final String selectWeight;
  final Function onPopUpMenuChanged, onSliderChanged;
  final TextEditingController nameController;
  final TextEditingController amountController;
  FormFields(this.howManyWeeks, this.selectWeight, this.onPopUpMenuChanged,
      this.onSliderChanged, this.nameController, this.amountController);

  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);
    return LayoutBuilder(
      builder: (context, constrains) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: constrains.maxHeight * 0.22,
            child: TextField(
              textInputAction: TextInputAction.next,
              controller: nameController,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  labelText: "Pills Name",
                  border: OutlineInputBorder()),
              onSubmitted: (val) => focus.nextFocus(),
            ),
          ),
          SizedBox(
            height: constrains.maxHeight * 0.07,
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: constrains.maxHeight * 0.22,
                  child: TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 22, 47),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20.0),
                        labelText: "Pills Ammount",
                        border: OutlineInputBorder()),
                    onSubmitted: (val) => focus.unfocus(),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: constrains.maxHeight * 0.1,
          ),
          Container(
            height: constrains.maxHeight * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: FittedBox(
                child: Text(
                  "How long?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 41, 27, 51),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Container(
              height: constrains.maxHeight * 0.18,
              child: UserSlider(this.onSliderChanged, this.howManyWeeks)),
          Align(
            alignment: Alignment.bottomRight,
            child: FittedBox(child: Text('$howManyWeeks weeks')),
          )
        ],
      ),
    );
  }
}
