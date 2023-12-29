import 'package:flutter/material.dart';
import 'package:app/entity/active_service_entity.dart';

class ActiveServicesList extends StatelessWidget {
  const ActiveServicesList(this.activeServices, {super.key,});

  final List<ActiveServiceEntity> activeServices;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (activeServices.isNotEmpty) Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: ActiveService(activeServices.first),
          ),
          for (int i = 1; i < activeServices.length; ++i) Padding(
            padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
            child: ActiveService(activeServices[i]),
          ),
        ],
      ),
    );
  }
}

class ActiveService extends StatelessWidget {
  const ActiveService(this._data, {super.key});

  final ActiveServiceEntity _data;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          fixedSize: const Size(250, 150),
          surfaceTintColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.black.withAlpha(80),
          maximumSize: Size.copy(const Size(250, 150)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        ),
        onPressed: () {/*OPEN ACTIVE SERVICE*/},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withAlpha(20),
                    backgroundImage: AssetImage(_data.serviceImgUrl),
                    radius: 20,
                  ),
                ),
                Text(
                  _data.serviceName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _data.addInfo,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                ),
                Text(
                  '${_data.pricePerMonth} Р в месяц',
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
