import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'customers.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE customers(id INTEGER PRIMARY KEY, name TEXT, balance INTEGER)",
      );
    },
    version: 1,
  );

  Future<void> insertCustomer(Customer customer) async {
    final Database db = await database;
    await db.insert(
      'customers',
      customer.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Customer>> customers() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('customers');
    return List.generate(maps.length, (i) {
      return Customer(
        id: maps[i]['id'],
        name: maps[i]['name'],
        balance: maps[i]['balance'],
      );
    });
  }

  Future<void> updateCustomer(Customer customer) async {
    final db = await database;
    await db.update(
      'customers',
      customer.toMap(),
      where: "id = ?",
      whereArgs: [customer.id],
    );
  }

  Future<void> deleteCustomer(int id) async {
    final db = await database;
    await db.delete(
      'customers',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  var Alex = Customer(
    id: 1,
    name: 'Alex',
    balance: 35000,
  );
  await insertCustomer(Alex);
  var Beth = Customer(
    id: 2,
    name: 'Beth',
    balance: 40000,
  );
  await insertCustomer(Beth);
  var Carrie = Customer(
    id: 3,
    name: 'Carrie',
    balance: 45000,
  );
  await insertCustomer(Carrie);
  var Daryl = Customer(
    id: 4,
    name: 'Daryl',
    balance: 50000,
  );
  await insertCustomer(Daryl);
  var Eddy = Customer(
    id: 5,
    name: 'Eddy',
    balance: 55000,
  );
  await insertCustomer(Daryl);
  var Fido = Customer(
    id: 6,
    name: 'Fido',
    balance: 60000,
  );
  await insertCustomer(Fido);
  var Glen = Customer(
    id: 7,
    name: 'Glen',
    balance: 65000,
  );
  await insertCustomer(Glen);
  var Hannah = Customer(
    id: 8,
    name: 'Hannah',
    balance: 70000,
  );
  await insertCustomer(Hannah);
  var Ida = Customer(
    id: 9,
    name: 'Ida',
    balance: 75000,
  );
  await insertCustomer(Ida);
  var John = Customer(
    id: 10,
    name: 'John',
    balance: 80000,
  );
  await insertCustomer(John);

  print(await customers());
}

class Customer {
  final int id;
  final String name;
  final int balance;

  Customer({this.id, this.name, this.balance});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'balance': balance,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Customer{id: $id, name: $name, balance: $balance}';
  }
}
