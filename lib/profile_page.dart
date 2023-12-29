import 'package:flutter/material.dart';
import 'package:app/active_services_section.dart';
import 'package:app/entity/active_service_entity.dart';
import 'package:app/entry_point.dart';
import 'package:app/interests_section.dart';
import 'package:app/tariffs_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 20),
      children: [
        const SizedBox(height: 30),
        const DescribedTitle(
          'У вас подключено',
          'Подписки, автоплатежи и сервисы на которые вы подписались',
        ),
        const SizedBox(height: 15,),
        ActiveServicesList(getActiveServices()),
        const SizedBox(height: 30),
        const DescribedTitle(
          'Тарифы и лимиты',
          'Для операций в Сбербанк Онлайн',
        ),
        const SizedBox(height: 15,),
        const TariffsList(),
        const SizedBox(height: 30),
        const DescribedTitle(
          'Интересы',
          'Мы подбираем истории и предложения по темам, которые вам нравятся',
        ),
        InterestsList(getInterestsTags())
      ],
    );
  }
}

List<ActiveServiceEntity> getActiveServices() {
  return [
    ActiveServiceEntity('СберПрайм', 'assets/images/sber_logo.png', 'Платёж 9 июля', 199),
    ActiveServiceEntity('Переводы', 'assets/images/sber_chetko.png', 'Автопродление 21 августа', 199)
  ];
}

List<String> getInterestsTags() {
  return ['Еда', 'Саморазвитие', 'Технологии', 'Дом', 'Досуг', 'Забота о себе', 'Наука'];
}
