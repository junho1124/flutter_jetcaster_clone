import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';

class BuildDetail extends StatefulWidget {
  const BuildDetail({Key key}) : super(key: key);

  @override
  _BuildDetailState createState() => _BuildDetailState();
}

class _BuildDetailState extends State<BuildDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Music\'s Title',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    SizedBox(height: 4.0,),
                    Text('Album\'s Title',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),),
                  ],
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(context.read<MyProvider>().url[0],
                    height: 50,))
            ],
          ),
          SizedBox(height: 16.0),
          Container(
            child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
              ),),

          )
        ],
      ),
    );
  }
}
