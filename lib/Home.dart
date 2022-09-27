import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my home list'),
      ),
      body: ListView(
        children: [
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://th.bing.com/th/id/R.a14da66692ba7234f633f370df85641d?rik=b9uSlZu7F5enTg&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2015%2f10%2fLily_Flowers_51.jpg&ehk=pQwN%2flQ3P%2fZkwJgO76%2fxbpMJKmGqr8GHS4LJCUTHVXY%3d&risl=&pid=ImgRaw&r=0"),
//             ),
//             title: const Text("ajmal"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone),
//                 Icon(Icons.message),
//               ],
//             ), onTap: () {
//             ScaffoldMessenger
//                 .of(context)
//                 .showSnackBar(const SnackBar(
//                 content: Text(("sending message"),)));
//             },
//           ),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://yt3.ggpht.com/a/AATXAJwx-_ZnZdDNMMZc8EhFdOsjcPkVIgj89NK8CQ=s900-c-k-c0xffffffff-no-rj-mo"),
//             ),
//             title: const Text("dinesh"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),onTap: (){
//               Fluttertoast.showToast(msg: "hello its me",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER);
//           },
//           ),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://yt3.ggpht.com/a/AATXAJwx-_ZnZdDNMMZc8EhFdOsjcPkVIgj89NK8CQ=s900-c-k-c0xffffffff-no-rj-mo"),
//             ),
//             title: const Text("ajii"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://yt3.ggpht.com/a/AATXAJwx-_ZnZdDNMMZc8EhFdOsjcPkVIgj89NK8CQ=s900-c-k-c0xffffffff-no-rj-mo"),
//             ),
//             title: const Text("suresh"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ), ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://th.bing.com/th/id/R.a14da66692ba7234f633f370df85641d?rik=b9uSlZu7F5enTg&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2015%2f10%2fLily_Flowers_51.jpg&ehk=pQwN%2flQ3P%2fZkwJgO76%2fxbpMJKmGqr8GHS4LJCUTHVXY%3d&risl=&pid=ImgRaw&r=0"),
//             ),
//             title: const Text("harshan"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ), ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://th.bing.com/th/id/R.a14da66692ba7234f633f370df85641d?rik=b9uSlZu7F5enTg&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2015%2f10%2fLily_Flowers_51.jpg&ehk=pQwN%2flQ3P%2fZkwJgO76%2fxbpMJKmGqr8GHS4LJCUTHVXY%3d&risl=&pid=ImgRaw&r=0"),
//             ),
//             title: const Text("jishnu"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ), ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   " https://th.bing.com/th/id/R.9f71bd4b86d0f5ffd12b5394888a0547?rik=x7oK90uZLYOR8g&riu=http%3a%2f%2fwww.modern-notoriety.com%2fwp-content%2fuploads%2f2019%2f03%2fcoa.jpg&ehk=QFYV2c3aHMK5v9zzY0Wr3D8sVa15NUpCX8yzezePeFY%3d&risl=&pid=ImgRaw&r=0"),),
//             title: const Text("ayush"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ), ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://yt3.ggpht.com/a/AATXAJwx-_ZnZdDNMMZc8EhFdOsjcPkVIgj89NK8CQ=s900-c-k-c0xffffffff-no-rj-mo"),
//             ),
//             title: const Text("adhil"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ), ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://yt3.ggpht.com/a/AATXAJwx-_ZnZdDNMMZc8EhFdOsjcPkVIgj89NK8CQ=s900-c-k-c0xffffffff-no-rj-mo"),
//             ),
//             title: const Text("anandhu"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   " https://th.bing.com/th/id/R.9f71bd4b86d0f5ffd12b5394888a0547?rik=x7oK90uZLYOR8g&riu=http%3a%2f%2fwww.modern-notoriety.com%2fwp-content%2fuploads%2f2019%2f03%2fcoa.jpg&ehk=QFYV2c3aHMK5v9zzY0Wr3D8sVa15NUpCX8yzezePeFY%3d&risl=&pid=ImgRaw&r=0"),),
//             title: const Text("ameer"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage(
//                   " https://th.bing.com/th/id/R.9f71bd4b86d0f5ffd12b5394888a0547?rik=x7oK90uZLYOR8g&riu=http%3a%2f%2fwww.modern-notoriety.com%2fwp-content%2fuploads%2f2019%2f03%2fcoa.jpg&ehk=QFYV2c3aHMK5v9zzY0Wr3D8sVa15NUpCX8yzezePeFY%3d&risl=&pid=ImgRaw&r=0"),),
//             title: const Text("buddie"),
//             trailing: Wrap(spacing: 20,
//               children: const [
//                 Icon(Icons.phone), Icon(Icons.message),
//               ],
//             ),
//           ),
//
          Text("apple.png"),
          Text("grape.png"),
          Text("dragon.png"),
          Text("lemon.png"),
          Text("orange.png"),
        ],
      ),
    );
  }
}
