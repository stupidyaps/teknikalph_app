import 'package:flutter/material.dart';
import 'home_page.dart';

class FBookingPage extends StatefulWidget{
  final String tradesmanName;
  final String serviceName;

  const FBookingPage({Key? key, required this.tradesmanName, required this.serviceName}) : super(key: key);

  @override
  _FBookingPageState createState() => _FBookingPageState();
}

class _FBookingPageState extends State<FBookingPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedSTime = TimeOfDay.now();
  TimeOfDay selectedETime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectSTime(BuildContext context) async {
    final TimeOfDay? pickedT = await showTimePicker(
        context: context,
        initialTime: selectedSTime);
    if (pickedT != null && pickedT != selectedSTime ) {
      setState(() {
        selectedSTime = pickedT;
      });
    }
  }

  Future<void> _selectETime(BuildContext context) async {
    final TimeOfDay? pickedT = await showTimePicker(
        context: context,
        initialTime: selectedETime);
    if (pickedT != null && pickedT != selectedETime ) {
      setState(() {
        selectedETime = pickedT;
      });
    }
  }

  //For User Picture
  Widget _createUserPicWNameRate(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 120.0,
          width: 120.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,2),
                  blurRadius: 6.0,
                )
              ],
              image: DecorationImage(
                image: AssetImage('assets/defaultUserImage.png'),
              )
          ),
        ),
        Column(
          children: <Widget>[
            Text(widget.tradesmanName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(widget.serviceName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  ),
                ),
                const SizedBox(width:15),
                const Icon(Icons.star, color: Colors.yellow,),
                const Text("5.0",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _createJobsTable(){
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(5),
        2: FlexColumnWidth(2.5),
      },
      // border: TableBorder.all(color: Colors.black),
      children: const [
        TableRow(
            children: [
              Text("Queue #", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              Text("Time", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              Text("Date", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ]
        ),
        TableRow(
            children: [
              Text("1", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("12:00 NN - 03:00 PM", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("02/17/22", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            ]
        ),
        TableRow(
            children: [
              Text("2", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("04:15 PM - 05:25 PM", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("02/17/22", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            ]
        ),
        TableRow(
            children: [
              Text("3", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("06:05 PM - 07:30 PM", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
              Text("02/17/22", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            ]
        ),
      ],
    );
  }

  Widget _createInfoTable(){
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(0.1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1.3),
      },
      // border: TableBorder.all(color: Colors.black),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            children: [
              Container(height: 40),
              const Text("Full Name:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              Text(widget.tradesmanName, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ]
        ),
        TableRow(
            children: [
              Container(height: 40),
              const Text("Birthdate:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              const Text("January 1, 1946", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ]
        ),
        TableRow(
            children: [
              Container(height: 40),
              const Text("Contact Number:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              const Text("09123456789", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ]
        ),
        TableRow(
            children: [
              Container(height: 40),
              const Text("Email Address:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              const Text("jdelacruz@gmail.com", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ]
        ),
        TableRow(
            children: [
              Container(height: 40),
              const Text("Work Address:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              const Text("Bagumbayan Sur, Naga City", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
            ]
        ),
        TableRow(
            children: [
              Container(height: 40),
              const Text("Specialties:", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
              const Text("Carpentry, Mechanic", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
            ]
        ),
      ],
    );
  }

  Widget _createRatingsTab(){
    return Column(children: <Widget>[
      Row(
        children: const <Widget>[
          Text("Jorge Hugasbigat",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Icon(Icons.star_half, color: Colors.yellow,),
          Text("3.0",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
      const SizedBox(height: 5,),
      Row(
        children: const [
          Flexible(
            child:
            Text("Maganda naman yung design ng mga gawa niya, ayus naman sana kaso nabali nung pagtalon namin ni misis..",
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: const <Widget>[
          Text("Barok Obamski",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Icon(Icons.star, color: Colors.yellow,),
          Text("4.5",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
      const SizedBox(height: 5,),
      Row(
        children: const [
          Flexible(
            child:
            Text("Magaling pakakagwa nito lods. Will order again! ",
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ],);
  }

  Widget _createBookWorker(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            primary: const Color(0xFF014466),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(12.0)
        ),
        child: const Text("Book a Work",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          await _selectDate(context);
          await _selectSTime(context);
          await _selectETime(context);
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Booking Submitted", textAlign: TextAlign.center,style: TextStyle(color: Color(0xfffe8161)),),
                content: SizedBox(
                  height: 165,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: Text(widget.tradesmanName+" has approved of your "+widget.serviceName+" Service Booking.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Flexible(
                        child: Text("Your booked "+widget.serviceName+" will start at 12:00 NN until 01:45 PM, this Friday, February 18, 2022 at Orange Dormitel Room 1407.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      ),
                      child: const Text("Continue", style: TextStyle(color: Color(0xFF014466), fontSize: 18),))
                ],
              )
          );
          debugPrint("Book Button Tapped");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(45),
      //   child: AppBar(
      //     backgroundColor: Colors.white,
      //     iconTheme: const IconThemeData(color: Colors.black),
      //     elevation: 0,
      //   ),
      // ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30,275,30,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20,),
                  Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          Text("Ongoing Jobs:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF014466),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      _createJobsTable(),
                      const SizedBox(height: 30,),
                      Row(
                        children: const <Widget>[
                          Text("Basic Information:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF014466),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      _createInfoTable(),
                      const SizedBox(height: 30,),
                      Row(
                        children: const <Widget>[
                          Text("Worker Ratings:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF014466),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      _createRatingsTab(),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 275,
              padding: const EdgeInsets.fromLTRB(30,50,30,10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end:  Alignment.centerRight,
                  colors: [
                    Color(0xfffe8161),
                    Color(0xfff4775e),
                    Color(0xffda5a59)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),child: Column(
              children: <Widget>[
                const SizedBox(height: 10,),
                _createUserPicWNameRate(),
                const SizedBox(height: 20,),
                _createBookWorker(),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}