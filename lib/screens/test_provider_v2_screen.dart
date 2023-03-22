import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/provider/data_provider.dart';
import 'package:provider/provider.dart';

class TestProviderV2Screen extends StatefulWidget {
  const TestProviderV2Screen({super.key});

  @override
  State<TestProviderV2Screen> createState() => _TestProviderV2ScreenState();
}

class _TestProviderV2ScreenState extends State<TestProviderV2Screen> {
  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<DataProvider>(context, listen: false);
    postModel.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Provider V2'),
      ),
      body: SafeArea(
          child: postModel.loading
              ? const Center(
                  child: Text('loading...'),
                )
              : Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 20),
                      child: Text(
                        postModel.post?.title ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Text(postModel.post?.body ?? ""),
                    )
                  ],
                )),
    );
  }
}
