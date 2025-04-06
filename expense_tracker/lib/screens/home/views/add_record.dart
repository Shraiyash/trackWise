import 'package:expense_tracker/data/person_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {

  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController personController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  String? selectedPerson;

  int selectedCategory = 0;
  // DateTime selectedDate = DateTime.now();
  // String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  @override
  void initState() {
   dateController.text = DateFormat('MM/dd/yyyy').format(DateTime.now());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Record',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextFormField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      amountController.text = value;
                    });
                  },
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).unfocus();
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an amount';
                    }
                    return null;
                  },
                  decoration: 
                  InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(CupertinoIcons.money_dollar),
                    labelText: 'Amount',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue.shade800),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CategoryToggle(
                selectedIndex: selectedCategory,
                onValueChanged: (newIndex) {
                  setState(() {
                    selectedCategory = newIndex;
                  });
                },
              ),
              const SizedBox(height: 20),
             DropdownButtonFormField2<String>(
                isExpanded: true,
                value: selectedPerson,
                items: [
                  DropdownMenuItem<String>(
                    value: personList[0]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[0]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[0]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[1]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[1]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[1]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[2]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[2]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[2]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[3]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[3]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[3]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[4]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[4]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[4]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[5]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[5]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[5]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[6]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[6]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[6]['name'],),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: personList[7]['name'],
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(personList[7]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(personList[7]['name'],),
                      ],
                    ),
                  ),
                ],
                // items: persons.map((person) {
                //   return DropdownMenuItem<String>(
                //     value: person['name'],
                //     child: Row(
                //       children: [
                //         Container(
                //           width: 40,
                //           height: 40,
                //           decoration: BoxDecoration(
                //             shape: BoxShape.circle,
                //             image: DecorationImage(
                //               image: AssetImage(person['image']!),
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(width: 10),
                //         Text(person['name']!),
                //       ],
                //     ),
                //   );
                // }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedPerson = value;
                  });
                },
                decoration: InputDecoration(
                  // contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  // contentPadding:
                  //   EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(CupertinoIcons.person_fill),
                  labelText: 'Person',
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  
                ),
                dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                ),
                menuItemStyleData: const MenuItemStyleData(

                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: dateController,
                onChanged: (value) {
                  setState(() {
                    dateController.text = value;
                  });
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).unfocus();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
                readOnly: true,
                onTap: ()  async{
                  DateTime? newDate = await showDatePicker(
                    context: context, 
                    firstDate: DateTime.now(), 
                    lastDate: DateTime.now().add(Duration(days: 365), ), 
                    initialDate: selectedDate);
                  if(newDate != null) {
                    setState(() {
                      dateController.text = DateFormat('MM/dd/yyyy').format(newDate);
                      selectedDate = newDate;
                    });
                  }
                },
                decoration: 
                  InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(CupertinoIcons.time_solid),
                    labelText: 'Date',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                ),
                
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  ),
                child: 
                Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryToggle extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onValueChanged;

  const CategoryToggle({
    Key? key,
    required this.selectedIndex,
    required this.onValueChanged,
  }) : super(key: key);

  @override
  _CategoryToggleState createState() => _CategoryToggleState();
}

class _CategoryToggleState extends State<CategoryToggle> {
  final double controlHeight = 50;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      double segmentWidth = width / 2;
      return Container(
        height: controlHeight,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: widget.selectedIndex == 0 ? 0 : segmentWidth,
              top: 0,
              child: Container(
                width: segmentWidth,
                height: controlHeight,
                decoration: BoxDecoration(
                  color: widget.selectedIndex == 0
                              ? Colors.red.shade400
                              : Colors.blue.shade700,
                  borderRadius: widget.selectedIndex == 0
                    ? BorderRadius.circular(12) : BorderRadius.circular(15)
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onValueChanged(0);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Amount Owed',
                        style: TextStyle(
                          color: widget.selectedIndex == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onValueChanged(1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Future Income',
                        style: TextStyle(
                          color: widget.selectedIndex == 1
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}