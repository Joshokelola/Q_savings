import 'package:emojis/emojis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

class TodoListWidget extends StatefulWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  var value = false; //TODO:STILL GONNA REMOVE THIS VARIABLE FROM HERE
  var value1 = false;
  var value2 = false;

  @override
  Widget build(BuildContext context) {
    //TODO:Remember to wrap child of column with expanded to avoid unbounded constraints error
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Text(
                  'TO-DO-LIST -',
                  style: darkTheme.textTheme.titleSmall,
                ),
                //TODO:Eventually add locale support(support for different languages)
                Text(
                  'REFRESH',
                  style: darkTheme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.black38,
                      width: 1,
                    )),
                child: ListTile(
                  leading: Checkbox(
                    value: value,
                    onChanged: (val) {
                      setState(() {
                        value = val!;
                      });
                    },
                  ),
                  title: Text(
                    'Turn ON Quiiick Autosave ${Emojis.verticalTrafficLight}',
                    style: darkTheme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.black38,
                      width: 1,
                    )),
                child: ListTile(
                  leading: Checkbox(
                    value: value1,
                    onChanged: (val) {
                      setState(() {
                        value1 = val!;
                      });
                    },
                  ),
                  title: Text(
                    'QuiiickLock \$300 for 61-90 days ${Emojis.timerClock}',
                    style: darkTheme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.black38,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: ListTile(
                  leading: Checkbox(
                    value: value2,
                    onChanged: (val) {
                      setState(() {
                        value2 = val!;
                      });
                    },
                  ),
                  title: Text(
                    'Redeem your \$10 dollars bonus ${Emojis.moneyMouthFace}',
                    style: darkTheme.textTheme.bodyMedium,
                  ),
                ),
              )
              // SizedBox(height: 20),
              // ListTile(
              //   leading: Checkbox(
              //     value: value,
              //     onChanged: (val) {
              //       setState(() {
              //         value = val!;
              //       });
              //     },
              //   ),
              //   title: Text(
              //     'SafeLock \$300 for 61-90 days',
              //     style: darkTheme.textTheme.bodyMedium,
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
