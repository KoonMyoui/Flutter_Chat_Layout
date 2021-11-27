import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("สนทนาลับฉบับคุณนาย",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListTile( title: Text("Misaki"),subtitle: Text("hello."), leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl0b4zNygN1n-y5hA4fQamTCT82rQJullP-CN69CoXnu8fNGqg7ck0o9wzenR-MptOTqY&usqp=CAU")), trailing: Icon(Icons.star)),
            ListTile( title: Text("Mika"),subtitle: Text("WTF."), leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGUpRPCotPngSXVQ-TXZR51WdS0o3rz24OfKEKsbF0YbrTIhQpsjWG0odlU9YM_IBgioo&usqp=CAU")), trailing: Icon(Icons.star)),
            ListTile( title: Text("Noru"),subtitle: Text("คืนนี้กินข้าวที่บ้านนะ "), leading: CircleAvatar(backgroundImage: NetworkImage("https://scontent.fbkk13-1.fna.fbcdn.net/v/t1.6435-9/183417801_317470699744096_2136637385721239063_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGkQOvarMv0GBUN75roAjhRyiS3Ztq_0TfKJLdm2r_RN59o2HW3oy5igsMsAt7jTDbLR4iXZacjclpb-pChbR4G&_nc_ohc=2tguypFDw4oAX_Ln24B&_nc_ht=scontent.fbkk13-1.fna&oh=72fbee1ac21b2f90a527809b90746685&oe=61C92E68")), trailing: Icon(Icons.star)),
            ListTile( title: Text("mikumi"),subtitle: Text("รีบส่งงานได้แล้ว!!"), leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD96JMWRqUbKAWX5Pm2eM9vVKBzVwzJiq-LIgJEu-yiICG-JhModayl9FN3Ut6MmraGrA&usqp=CAU")), trailing: Icon(Icons.star)),
          ],
        ),
      ),
    );
  }
}