
import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/welcome2/components/kuisioner_btn2.dart';
// import 'package:hmif_care_mobile/app/pages/kuisioner/welcome1/components/kuisioner_btn.dart';

class BoxKuisioner2 extends StatelessWidget {
  const BoxKuisioner2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          constraints: const BoxConstraints.expand(
            height: 350,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x3600000F),
                offset: Offset(0, -1),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: 
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child:
                  Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: const[
                        Chip(
                          avatar: CircleAvatar(backgroundColor: Color(0XFF072768), child: Text('1', style: TextStyle(color: Colors.white))),
                          label:  Text('Isi sesuai keadaan Anda saat ini.'),
                          backgroundColor: Color(0XFFF4EAE1),
                        ),
                        Chip(
                          avatar: CircleAvatar(backgroundColor: Color(0XFF072768), child: Text('2', style: TextStyle(color: Colors.white))),
                          label: Text('Pastikan bahwa tidak ada paksaan dalam mengisi kuisioner ini.',
                          maxLines: 2, 
                          overflow: TextOverflow.visible, softWrap: true
                          ),
                          backgroundColor: Color(0XFFF4EAE1),
                          ),
                        Chip(
                          avatar: CircleAvatar(backgroundColor: Color(0XFF072768), child: Text('3', style: TextStyle(color: Colors.white))),
                          label: Text('Buat diri Anda nyaman dalam pengerjaan kuisioner ini.',
                          maxLines: 2, 
                          overflow: TextOverflow.visible, softWrap: true
                          ),
                          backgroundColor: Color(0XFFF4EAE1),
                        ),
                        Chip(
                          avatar: CircleAvatar(backgroundColor: Color(0XFF072768), child: Text('4', style: TextStyle(color: Colors.white))),
                          label: Text('Kejujuran adalah hal yang penting untuk membantu Anda mengetahui diri Anda.',
                          maxLines: 2, 
                          overflow: TextOverflow.visible, softWrap: true
                          ),
                          backgroundColor: Color(0XFFF4EAE1),
                        ),
                    ],
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.all(10),
                  child: const Kuisionerbtn2(),),
              ],
          )
            
        ),
      ],

    );
  }
}
