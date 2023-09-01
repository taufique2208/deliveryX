import 'dart:html';
import 'dart:js_interop';
import 'package:flutter/material.dart';

class DetailsLabel extends StatelessWidget {
  final String label;
  const DetailsLabel({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 7, 0, 2),
        child: Text('$label :',
            textAlign: TextAlign.left, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}

class OrderDetails extends StatefulWidget {
  const OrderDetails({
    super.key,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.purple,
                        indicatorColor: Colors.white,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        // controller: tabController,
                        tabs: [
                          Tab(
                            text: 'Senders Info',
                          ),
                          Tab(
                            text: 'Recievers Info',
                          ),
                        ]),
                  ),
                ),
              ),
              // SingleChildScrollView(child: OrderDetails_Sender()),
              // Expanded(child: Text('hello'))
              Container(
                padding: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  Column(children: [
                    buildTextField(
                      'Name',
                      Icons.person,
                      'Enter Senders Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Phone Number',
                      Icons.phone,
                      'Enter Senders number',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone Number is required';
                        }
                        if (int.tryParse(value) == null || value.length != 10) {
                          return 'Enter a Valid Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Block Number',
                      Icons.pin,
                      'Enter Senders Block number',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Block Number is required';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Enter a valid Block Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Street Name',
                      Icons.location_pin,
                      'Enter Senders Street Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Street Name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Landmark',
                      Icons.location_pin,
                      'Enter Senders Landmark',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Landmark is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'City',
                      Icons.location_city_outlined,
                      'Enter Senders City Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'City is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'State',
                      Icons.location_city_outlined,
                      'Enter Senders State',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'State is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'State',
                      Icons.location_on,
                      'Enter Senders State',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'State is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Pin Code',
                      Icons.location_city_outlined,
                      'Enter Senders Pin Code',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'PinCode is required';
                        }
                        if (int.tryParse(value) == null || value.length != 6) {
                          return 'Invalid PinCode';
                        }
                        return null;
                      },
                    ),
                  ]),
                  Column(children: [
                    buildTextField(
                      'Name',
                      Icons.person,
                      'Enter Senders Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Phone Number',
                      Icons.phone,
                      'Enter Senders number',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone Number is required';
                        }
                        if (int.tryParse(value) == null || value.length != 10) {
                          return 'Enter a Valid Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Block Number',
                      Icons.pin,
                      'Enter Senders Block number',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Block Number is required';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Enter a valid Block Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Street Name',
                      Icons.location_pin,
                      'Enter Senders Street Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Street Name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Landmark',
                      Icons.location_pin,
                      'Enter Senders Landmark',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Landmark is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'City',
                      Icons.location_city_outlined,
                      'Enter Senders City Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'City is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'State',
                      Icons.location_city_outlined,
                      'Enter Senders State',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'State is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'State',
                      Icons.location_on,
                      'Enter Senders State',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'State is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    buildTextField(
                      'Pin Code',
                      Icons.location_city_outlined,
                      'Enter Senders Pin Code',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'PinCode is required';
                        }
                        if (int.tryParse(value) == null || value.length != 6) {
                          return 'Invalid PinCode';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Enter the Recievers Available Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 100,
                        child: buildTextField(
                          'From',
                          Icons.location_on,
                          '08:00',
                          validator: (value) {
                            if (int.parse(value!) > 24 ||
                                int.parse(value!) < 0) {
                              return 'Enter Correct Time';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(':'),
                      SizedBox(width: 10),
                      Container(
                        width: 100,
                        child: buildTextField(
                          'To',
                          Icons.location_on,
                          '13:00',
                          validator: (value) {
                            if (int.parse(value!) > 24 ||
                                int.parse(value) < 0) {
                              return 'Enter correct time';
                            }
                            return null;
                          },
                        ),
                      )
                    ])
                  ]),
                ]),
              ),

              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform registration logic
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => LoginScreen()),
                      // );
                    }
                  },
                  child: Text(
                    'Enter Package Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFA084E8), // Button color
                    onPrimary: Colors.black, // Text color
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,
                    minimumSize: Size(double.infinity, 0), // Full width
                  ),
                ),
              ),
              SizedBox(height: 16),
            ]),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, IconData icon, String hint,
      {bool isPassword = false,
      TextInputType? keyboardType,
      FormFieldValidator<String>? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          obscureText: isPassword,
          keyboardType: keyboardType,
          validator: validator, // Validator function
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Color(0xFFA084E8)),
            hintText: hint,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 203, 195, 195)),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFA084E8)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}

// .