import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

enum FilterType {
  all,
  fixed,
  unfixed,
}

class PotholesPage extends StatefulWidget {
  const PotholesPage({super.key});

  @override
  State<PotholesPage> createState() => _PotholesPageState();
}

class _PotholesPageState extends State<PotholesPage> {
  FilterType filterType = FilterType.all;

  @override
  Widget build(BuildContext context) {
    final collection = FirebaseFirestore.instance.collection('potholes');

    return Scaffold(
      appBar: AppBar(title: const Text('Potholes Page'), actions: [
        RadioListTile<FilterType>(
          title: const Text('All'),
          value: FilterType.all,
          groupValue: filterType,
          onChanged: (FilterType value) {
            setState(() {
              filterType.?=value;
            });
          },
        ),
        RadioListTile<FilterType>(
          title: const Text('Fixed'),
          value: FilterType.fixed,
          groupValue: filterType,
          onChanged: (FilterType value) {
            setState(() {
              filterType = value;
            });
          },
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () =>
            collection.add({'date-added': DateTime.now(), 'fixed': false}),
      ),
      body: StreamBuilder(
          stream: collection.where('fixed', isEqualTo: false).snapshots(),
          builder: (context, snapshot) {
            log('PotholesPage StreamBuilder builder');
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final document = snapshot.data!.docs[index];
                final dateAdded =
                    (document['date-added'] as Timestamp).toDate();
                final fixed = (document['fixed'] as bool);
                return ListTile(
                  title: Text(document.id),
                  subtitle: Text(dateAdded.toIso8601String()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(fixed ? Icons.check : Icons.close),
                        onPressed: () =>
                            document.reference.update({'fixed': !fixed}),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => document.reference.delete(),
                      )
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
