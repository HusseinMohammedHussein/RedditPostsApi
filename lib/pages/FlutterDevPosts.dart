import 'package:flutter/material.dart';
import 'package:flutter_assignment/models/Children.dart';
import 'package:flutter_assignment/models/ChildrenData.dart';
import 'package:flutter_assignment/services/FlutterDevService.dart';
import 'package:url_launcher/url_launcher.dart';

class FlutterDevPosts extends StatefulWidget {
  const FlutterDevPosts({super.key});

  @override
  State<FlutterDevPosts> createState() => _FlutterDevPostsState();
}

class _FlutterDevPostsState extends State<FlutterDevPosts>
    with SingleTickerProviderStateMixin {
  late Size size;
  late TabController _tabController;
  late FlutterDevService service;
  List<Children> getData = [];
  List<ChildrenData> getNewPostsData = [];
  List<ChildrenData> getHotPostsData = [];
  List<ChildrenData> getRisingPostsData = [];
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    service = FlutterDevService();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    _tabControllerListener();
    // getNewPosts();
  }

  _tabControllerListener() {
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          _selectedTab = _tabController.index;
        });
      }
    });
  }

  _getTab(index, child) {
    return Tab(
      child: SizedBox.expand(
        child: Container(
          child: child,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                      color: _selectedTab == index ? Colors.blue : Colors.white,
                      width: 2))),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  getNewPosts() {
    service.newPosts().then((value) {
      setState(() {
        getData = value.data.children;
        for (int i = 0; i < getData.length; i++) {
          getNewPostsData.add(getData[i].data);
        }
        print("getPostTitle>>>>> ${value.data.children.map((e) => e.data.postTitle!)}");
      });
    });
  }

  getHotPosts() {
    service.hotPosts().then((value) {
      setState(() {
        getData = value.data.children;
        for (int i = 0; i < getData.length; i++) {
          getHotPostsData.add(getData[i].data);
        }
        print(
            "getPostTitle>>>>> ${value.data.children.map((e) => e.data.postTitle!)}");
      });
    });
  }

  getRisingPosts() {
    service.risingPosts().then((value) {
      setState(() {
        getData = value.data.children;
        for (int i = 0; i < getData.length; i++) {
          getRisingPostsData.add(getData[i].data);
        }
        print(
            "getPostTitle>>>>> ${value.data.children.map((e) => e.data.postTitle!)}");
      });
    });
  }

  Widget _newPostsList() {
    if (_selectedTab == 0) {
      getNewPosts();
    }
    print("getNewPostsData_length>>>> ${getNewPostsData.length}");
    return ListView.builder(
      itemCount: getNewPostsData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: size.height * 0.17,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: InkWell(
            onTap: () {
              setState(() {
                _launchURL(getNewPostsData[index].postUrl);
              });
            },
            child: Card(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 2, color: Colors.yellow))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(getNewPostsData[index].postTitle!,
                        maxLines: 3,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      getNewPostsData[index].postBody!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _hotPostsList() {
    if (_selectedTab == 1) {
      getHotPosts();
    }

    return ListView.builder(
      itemCount: getHotPostsData.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: size.height * 0.17,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: InkWell(
            onTap: () {
              _launchURL(getHotPostsData[index].postUrl);
            },
            child: Card(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 2, color: Colors.yellow))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(getHotPostsData[index].postTitle!,
                        maxLines: 3,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      getHotPostsData[index].postBody!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _risingPostsList() {
    if (_selectedTab == 2) {
      getRisingPosts();
    }

    return ListView.builder(
      itemCount: getRisingPostsData.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            setState(() {
              launchUrl(
                  Uri.parse(getRisingPostsData[index].postUrl.toString()));
            });
          },
          child: Container(
            height: size.height * 0.17,
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Card(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 2, color: Colors.yellow))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(getRisingPostsData[index].postTitle!,
                        maxLines: 3,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      getRisingPostsData[index].postBody!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _launchURL(urlParam) async {
    if (urlParam != null) {
      final Uri url = Uri.parse(urlParam);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $urlParam');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("We are sorry it does not have a link!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title:
            const Text("/r/FlutterDev", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      // backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Material(
                color: Colors.grey.shade300,
                child: TabBar(
                  unselectedLabelColor: Colors.blue,
                  labelColor: Colors.blue,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  labelPadding: const EdgeInsets.all(0.0),
                  tabs: [
                    _getTab(0, const Text("New", style: TextStyle(color: Colors.black),)),
                    _getTab(1, const Text("Hot", style: TextStyle(color: Colors.black))),
                    _getTab(2, const Text("Rising", style: TextStyle(color: Colors.black))),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      _newPostsList(),
                      _hotPostsList(),
                      _risingPostsList()
                    ]),
              ),
            ],
          )),
    );
  }

  @override
  void dispose() {
    getNewPostsData.clear();
    getHotPostsData.clear();
    getRisingPostsData.clear();
    super.dispose();
  }
}
