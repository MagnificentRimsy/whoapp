import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:who/newTicket.dart';
import 'package:who/ticketDetails.dart';

void main() => runApp(DashboardPage());

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: .5,
        title: Center(
            child: Text(
          'Add Label',
          textAlign: TextAlign.left,
        )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildTitleSection(
                title: "Welcome Jonah",
                subTitle: "Active Tickets",
              ),
              _buildCreditCard(
                  color: HexColor('#6FCF97'),
                  ticketDateTime: "23-11-2020/3:00pm",
                  ticketFrom: "JONAH BOYI",
                  ticketTItle: "Hardware Issue"),
              SizedBox(
                height: 15,
              ),
              _buildCreditCard(
                color: HexColor('#EA574D'),
                ticketDateTime: "23-11-2020/3:00pm",
                ticketFrom: "OGA HAMZART ",
                ticketTItle: "Network Failure",
              ),
              SizedBox(
                height: 15,
              ),
              _buildCreditCard(
                color: HexColor('#E0B20C'),
                ticketDateTime: "23-11-2020/6:00pm",
                ticketFrom: "Omo Tayo ",
                ticketTItle: "Can't Capture Data",
              ),
              _buildAddCardButton(
                icon: Icon(Icons.add),
                color: Color(0xFF081603),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Build the title section
  Column _buildTitleSection({@required title, @required subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Text(
                '$title',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 55.0, top: 16.0),
            //   child: IconButton(
            //     icon: Icon(
            //       Icons.add,
            //       color: Colors.black,
            //     ),
            //     onPressed: null,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 85.0, top: 16.0),
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
          child: Text(
            '$subTitle',
            style: TextStyle(fontSize: 21, color: Colors.black45),
          ),
        )
      ],
    );
  }

  // Build the credit card widget
  Card _buildCreditCard(
      {@required Color color,
      @required String ticketTItle,
      @required String ticketFrom,
      @required String ticketDateTime}) {
    return Card(
      elevation: 8.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 150,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$ticketTItle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            _buildLogosBlock(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: 'Ticket From:',
                  value: ticketFrom,
                ),
                _buildDetailsBlock(label: 'Date/Time', value: ticketDateTime),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Priority: High',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                  child: TicketDetails(),
                  type: PageTransitionType.rightToLeftWithFade),
            );
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 7),
            child: Text(
              'Opened',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 30,
            width: 70,
          ),
        ),
      ],
    );
  }

// Build Column containing the ticketFrom and expiration information
  Column _buildDetailsBlock({@required String label, @required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

// Build the FloatingActionButton
  Container _buildAddCardButton({
    @required Icon icon,
    @required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      alignment: Alignment.center,
      child: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
                child: AddTicketPage(),
                type: PageTransitionType.rightToLeftWithFade),
          );
          print("Create a new Ticket");
        },
        backgroundColor: HexColor('#0093D5'),
        mini: false,
        child: icon,
      ),
    );
  }
}
