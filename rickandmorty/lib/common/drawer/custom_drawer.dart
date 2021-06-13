import 'package:flutter/material.dart';
import 'package:rickandmorty/common/drawer/CustomDrawerHeader.dart';
import 'package:rickandmorty/common/drawer/DrawerTile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              CustomDrawerHeader(),
              DrawerTile(
                iconData: Icons.home,
                title: 'Pedidos',
                page: 0,
              ),
              DrawerTile(
                  iconData: IconData(0xe901, fontFamily: 'upplay'),
                  title: 'Minhas Entregas',
                  page: 1),
              DrawerTile(
                  iconData: IconData(0xe900, fontFamily: 'upplay'),
                  title: 'Financeiro',
                  page: 2),
              DrawerTile(
                  iconData: Icons.share_rounded,
                  title: 'Indique um amigo',
                  page: 3),
              DrawerTile(
                  iconData: Icons.settings, title: 'Definições', page: 4),
              DrawerTile(iconData: Icons.help, title: 'Ajuda', page: 5),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Container()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 22.5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        size: 25,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Text(
                        'Sair',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'v. 1.0.1',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pricipal',
                            fontSize: 16),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
