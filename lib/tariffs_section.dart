import 'package:flutter/material.dart';

class TariffsList extends StatelessWidget {
  const TariffsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TariffCard(
          Icon(Icons.speed, size: 35, color: Theme.of(context).primaryColor,),
          'Изменить суточный лимит',
          true,
          description: 'На платежи и переводы',
        ),
        TariffCard(
          Icon(Icons.percent, size: 35, color: Theme.of(context).primaryColor,),
          'Переводы без комиссии',
          true,
          description: 'Показать остаток в этом месяце',
        ),
        TariffCard(
          Icon(Icons.sync_alt_rounded, size: 35, color: Theme.of(context).primaryColor,),
          'Информация о тарифах и лимитах',
          false
        ),
      ],
    );
  }
}

class TariffCard extends StatelessWidget {
  const TariffCard(this._icon, this._title, this._isBottomDivided, {this.description, super.key});

  final bool _isBottomDivided;
  final Icon _icon;
  final String _title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return  Column (
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _icon,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  if (description != null) Text(
                    description??'',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              )
            ],
          ),
        ),
        if (_isBottomDivided)  Padding(
          padding: EdgeInsets.only(left: 21.0 + (_icon.size ?? 0)),
          child: const Divider(),
        )
      ],
    );
  }
}
