import 'package:flutter/material.dart';

Widget pageHuang() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '長太息以掩涕兮 哀民生之多艱',
      ),
      Text(
        '余雖好修姱以鞿羈兮 謇朝誶而夕替',
      ),
      Text(
        '既替余以蕙纕兮 又申之以攬茞',
      ),
      Text(
        '亦余心之所善兮 雖九死其猶未悔',
      ),
      Text(
        '怨靈脩之浩蕩兮 終不察夫民心',
      ),
      Text(
        '眾女嫉余之蛾眉兮 謠諑謂余以善淫',
      ),
      Text(
        '固時俗之工巧兮 偭規矩而改錯',
      ),
      Text(
        '背繩墨以追曲兮 競周容以為度',
      ),
      Text(
        '忳鬱邑余侘傺兮 吾獨窮困乎此時也',
      ),
      Text(
        '寧溘死以流亡兮 余不忍為此態也',
      ),
      Text(
        '鷙鳥之不群兮 自前世而固然',
      ),
      Text(
        '何方圜之能周兮 夫孰異道而相安',
      ),
      Text(
        '屈心而抑志兮 忍尤而攘詬',
      ),
      Text(
        '伏清白以死直兮 固前聖之所厚',
      ),
      Text(
        '悔相道之不察兮 延佇乎吾將反',
      ),
      Text(
        '回朕車以復路兮 及行迷之未遠',
      )
    ],
  );
}

Widget pageHun() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text(
      '步余馬於蘭皋兮 馳椒丘且焉止息',
    ),
    Text(
      '進不入以離尤兮 退將復脩吾初服',
    ),
    Text(
      '製芰荷以為衣兮 集芙蓉以為裳',
    ),
    Text(
      '不吾知其亦已兮 苟余情其信芳',
    ),
    Text(
      '高余冠之岌岌兮 長余佩之陸離',
    ),
    Text(
      '芳與澤其雜糅兮 唯昭質其猶未虧',
    ),
    Text(
      '忽反顧以遊目兮 將往觀乎四荒',
    ),
    Text(
      '佩繽紛其繁飾兮 芳菲菲其彌章',
    ),
    Text(
      '民生各有所樂兮 余獨好脩以為常',
    ),
    Text(
      '雖體解吾猶未變兮 豈余心之可懲',
    )
  ]);
}

Widget helper() {
  return Card(
      color: Colors.white,
      elevation: 4.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        title: pageHuang(),
      ));
}

Widget pageViewBuilder(int current) {
  return pages[current];
}

List<Widget> pages = List<Widget>();

class CrackHome extends StatefulWidget {
  @override
  _CrackHomeState createState() => new _CrackHomeState();
}

class _CrackHomeState extends State<CrackHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _current;
  @override
  void initState() {
    super.initState();
    pages.add(pageHuang());
    pages.add(pageHun());
    pages.add(helper());
    pages.add(pageHuang());
    _current = 0;
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  void _pushSaved(int index) {
    if (_current != index) {
      setState(() {
        _current = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('黄昏夹缝'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Mail',
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting',
              onPressed: null,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          // fixedColor: const Color(0xff075E54),
          currentIndex: _current,
          onTap: _pushSaved,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Container(
                  padding: EdgeInsets.only(top: 4),
                  child: Text('养心殿'),
                ),
                backgroundColor: const Color(0xff075E54)),
            BottomNavigationBarItem(
              icon: Icon(Icons.new_releases),
              title: Container(
                padding: EdgeInsets.only(top: 4),
                child: Text('迎宾阁'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              title: Container(
                padding: EdgeInsets.only(top: 4),
                child: Text('议事堂'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Container(
                padding: EdgeInsets.only(top: 4),
                child: Text('登闻鼓'),
              ),
            ),
          ],
        ),
        body: Center(
          child: pageViewBuilder(_current),
        ));
  }
}
