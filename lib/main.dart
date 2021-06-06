import 'package:flutter/material.dart';

void main() => runApp(const MechanicApp());

class MechanicApp extends StatelessWidget {
	const MechanicApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Mechanic App',
			initialRoute: '/',
			routes: <String, WidgetBuilder>{
				'/': (BuildContext context) => const HomePage(),
				'/inventories': (BuildContext context) => const InventoriesPage(),
			},
		);
	}
}

class HomePage extends StatelessWidget {
	const HomePage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('HomePage')),
			body: Center(
				child: TextButton(
					child: Text('Create Inventory'),
					onPressed: () {
						Navigator.push(
							context,
							MaterialPageRoute(builder: (context) => InventoriesPage()),
						);
					},
				),
			),
		);
	}
}

class InventoriesPage extends StatelessWidget {
	const InventoriesPage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return DefaultTextStyle(
			style: Theme.of(context).textTheme.headline4!,
			child: Container(
				color: Colors.white,
				alignment: Alignment.center,
				child: const Text('Inventories Page'),
			),
		);
	}
}

