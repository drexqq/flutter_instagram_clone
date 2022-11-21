import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_clone/src/providers/data_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataList = ref.watch(dataProvider);
    return Scaffold(
      body: dataList.when(
          data: (data) {
            return ListView.builder(
                // controller: scroll,
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(data[index]['image']),
                      Text("좋아요  ${data[index]['likes']}개"),
                      Text(data[index]['user']),
                      Text(data[index]['user']),
                      Text(data[index]['content'])
                    ],
                  );
                },
                itemCount: data.length);
          },
          error: (e, s) => Center(child: Text(e.toString())),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}

  // List<dynamic> data = [];
  // int dataIndex = 0;
  // final List<String> dataList = [
  //   "https://codingapple1.github.io/app/data.json",
  //   "https://codingapple1.github.io/app/more1.json",
  //   "https://codingapple1.github.io/app/more2.json"
  // ];

  // var scroll = ScrollController();
  // @override
  // void initState() {
  //   super.initState();
  //   getData(dataList[0]);
  //   scroll.addListener(() {
  //     if (scroll.position.pixels == scroll.position.maxScrollExtent) {
  //       if (dataIndex < dataList.length) {
  //         getData(dataList[dataIndex]);
  //       }
  //     }
  //   });
  // }