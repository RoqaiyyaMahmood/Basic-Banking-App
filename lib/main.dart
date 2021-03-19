import 'package:flutter/material.dart';
import 'package:besure_app/customersdb.dart';

void main() {
  runApp(MaterialApp(
    title: 'beSure Banking App',
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'beSure Banking',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar : AppBar(
            title : Text('beSure Banking',
              style : TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text("Alex"),
                  accountEmail: Text("alex@imagemail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("Alex"),
                  ),
              ),
              ListTile(
                title: Text('User Details'),
                leading
                    : Icon(Icons.people), ),
              ListTile(
                title: Text('Transaction History'),
                leading
                    : Icon(Icons.mail), ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/bank.jpg'),
              Text(
                  "\n\n\nWelcome to beSure Banking App",
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              )
              )
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            color: Colors.green,
            child: Text('View Customers',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            )
            ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            color: Colors.green,
            child: Text('Transfer Money',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            )
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdRoute()),
              );
            },
          ),
        ],
      )
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("All Customers",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        )
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alex"),
              accountEmail: Text("alex@imagemail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("Alex"),
              ),
            ),
            ListTile(
              title: Text('User Details'),
              leading
                  : Icon(Icons.people), ),
            ListTile(
              title: Text('Transaction History'),
              leading
                  : Icon(Icons.mail), ),
          ],
        ),
      ),
      body: BodyWidget(),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.account_balance),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
            );
          }
      )
    );
  }
}
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Transfer Money",
        style : TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        )
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alex"),
              accountEmail: Text("alex@imagemail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("Alex"),
              ),
            ),
            ListTile(
              title: Text('User Details'),
              leading
                  : Icon(Icons.people), ),
            ListTile(
              title: Text('Transaction History'),
              leading
                  : Icon(Icons.mail), ),
          ],
        ),
      ),
      body: Center(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Amount to transfer',
              hintText: 'Enter amount that you wish to transfer'
            ),
          ),
      ),
    floatingActionButton: FloatingActionButton(
    elevation: 10.0,
    child: Icon(Icons.arrow_forward_ios),
    onPressed: (){
     // Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),
      );
    }
    )
    );
  }
}
class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Ink(
        child : ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Beth',
          style : TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
          ),
    ),
          subtitle: Text('Customer id = 02'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            // add page call
          },
        ),
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Carrie',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 03'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //add page call
          },
        ),
        Ink(
        child : ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Daryl',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 04'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthRoute()),
            );
          },
        ),
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Eddy',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 05'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            // add page call
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Fido',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 06'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //add page call
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Glen',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 07'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FifthRoute()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Hannah',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 08'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //add page call
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Ida',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 09'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //add page call
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('John',
              style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
          ),
          subtitle: Text('Customer id = 10'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //add page call
          },
        ),
      ],
    );
  }
}
class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Information",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        )
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alex"),
              accountEmail: Text("alex@imagemail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("Alex"),
              ),
            ),
            ListTile(
              title: Text('User Details'),
              leading
                  : Icon(Icons.people), ),
            ListTile(
              title: Text('Transaction History'),
              leading
                  : Icon(Icons.mail), ),
          ],
        ),
      ) ,
      body: Center(
        child: Column(
            children: <Widget>[
              Image.asset('assets/daryl.png'),
              ListTile(
                leading: Text('Name : '),
                title: Text('Daryl Lexington'),
              ),
              ListTile(
                leading: Text('Account Number : '),
                title: Text('1000134'),
              ),
              ListTile(
                leading: Text('Customer ID :'),
                title: Text('04'),
              ),
              ListTile(
                leading: Text('Current Account Balance :'),
                title: Text('50,000'),
              ),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.account_balance),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
            );
          }
      )
    );
  }
}
class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("Payment Status",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
        body: Center(
          child: Text("Payment Successful!",
            style : TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.account_balance),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
            }
        )
    );
  }
}