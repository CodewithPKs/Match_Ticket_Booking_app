import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(color: Colors.white54,
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: AssetImage("assets/images/profile.png",),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Praveen Soni",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("@praveenSoni123")],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  ],
                ),const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Expanded(
                      child: ListView(
                        children: [
                          Card(
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading: Icon(
                                Icons.info,
                                color: Colors.black54,
                              ),
                              title: Text(
                                'My Account',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.white70,
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading: Icon(
                                Icons.airplane_ticket_sharp,
                                color: Colors.black54,
                              ),
                              title: Text(
                                'My Tickets',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.white70,
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading: Icon(
                                Icons.cancel_outlined,
                                color: Colors.black54,
                              ),
                              title: Text(
                                'Cancle ticket',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.white70,
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading:
                              Icon(Icons.help_outline, color: Colors.black54),
                              title: Text(
                                'Help & Support',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.white70,
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading: Icon(
                                Icons.privacy_tip_sharp,
                                color: Colors.black54,
                              ),
                              title: Text(
                                'Settings',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.white70,
                            margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const ListTile(
                              leading: Icon(
                                Icons.logout,
                                color: Colors.black54,
                              ),
                              title: Text(
                                'Logout',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}


