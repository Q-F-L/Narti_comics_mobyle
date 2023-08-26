import 'package:flutter/material.dart';
import 'package:narti_project/themes/theme.dart';
import '../components/component.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPage();
}

class _InfoPage extends State<InfoPage> {
  late bool leprol;

  @override
  void initState() {
    super.initState();
    leprol = true;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    Alignment alignment = Alignment.topLeft;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        fit: StackFit.loose,
        children: [
          Visibility(
            visible: !leprol,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.center,
                  // child: scrolPanel2(alignment, mediaQuery, context),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size(mediaQuery.size.width * 0.4, 29)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            bottomLeft:
                                                Radius.circular(10.0)))),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(208, 208, 208, 1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  leprol = !leprol;
                                });
                              },
                              child: Text(
                                "Об эпосе",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),
                          TextButton(
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size(mediaQuery.size.width * 0.4, 29)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0),
                                            bottomRight:
                                                Radius.circular(10.0)))),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(208, 208, 208, 1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  leprol = !leprol;
                                });
                              },
                              child: Text(
                                "О проекте",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),
                        ],
                      ),
                      Positioned(
                        right: 0,
                        child: TextButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                Size(mediaQuery.size.width * 0.45, 29)),
                            shadowColor: MaterialStateProperty.all(
                                Color.fromRGBO(30, 31, 35, 0.5)),
                            elevation: MaterialStateProperty.all(20),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "О проекте",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    "Для народов Кавказа всегда была важна преемственность поколений и сохранение культурного кода. Нартский эпос, как мы ранее отмечали, является уникальным наследием многих народов. Он издается в виде больших и сложных книг, формат которых в настоящее время устарел, и для эффективного восприятия и усвоения информации не подходит. К сожалению, молодежь не читает его и, соответственно, имеет низкий уровень знаний о культуре своего народа.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Image.asset("assets/Narty2.png"),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: Text(
                    "Командой проекта были проведены опросы, по результатам которых выяснилось, что целевая аудитория предпочитает графический формат, который свойственен для западной и восточной культуры, что в свою очередь, негативно влияет на уровень патриотизма и национальной идентичности. В связи с этим было принято решение адаптировать сказания Нартского эпоса под формат «рассказа в рисунках», а также разработать приложение для их чтения. При этом, все сюжетные линии и описания персонажей были сохранены и согласованы с историками-нартоведами.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: 83.0,
                )
              ],
            ),
          ),
          Visibility(
            visible: leprol,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size(mediaQuery.size.width * 0.4, 29)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            bottomLeft:
                                                Radius.circular(10.0)))),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(208, 208, 208, 1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  leprol = !leprol;
                                });
                              },
                              child: Text(
                                "Об эпосе",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),
                          TextButton(
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size(mediaQuery.size.width * 0.4, 29)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0),
                                            bottomRight:
                                                Radius.circular(10.0)))),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(208, 208, 208, 1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  leprol = !leprol;
                                });
                              },
                              child: Text(
                                "О проекте",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),
                        ],
                      ),
                      Positioned(
                        left: 0,
                        // right: 0,
                        child: TextButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                Size(mediaQuery.size.width * 0.45, 29)),
                            shadowColor: MaterialStateProperty.all(
                                Color.fromRGBO(30, 31, 35, 0.5)),
                            elevation: MaterialStateProperty.all(20),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Об эпосе",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/Image2.png"),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    bottom: 18.0,
                  ),
                  child: Text(
                    "Дорогой читатель, приветствую тебя! Я - Сказитель. Буду рассказывать тебе здесь захватывающие сказания из Нартского эпоса. Но прежде чем ты окунёшься в удивительный мир нартов, хочу поведать тебе о самом эпосе.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: AppColors.greyD0,
                ),
                Image.asset("assets/paragraph.png"),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    bottom: 20.0,
                  ),
                  child: Text(
                    "Нартский эпос – сборник сказаний народов Кавказа, своеобразный свод нравственных правил, энциклопедия воззрений на природу и общество. Он является хранителем культуры народов, фольклорным памятником великим героям и событиям прошлого, собранием образцов, на которых воспитывались сотни поколений.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: AppColors.greyD0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                  child: Text(
                    "Главные персонажи сказаний – нарты. В эпосе они описаны, как бесстрашные и жизнерадостные, свободолюбивые и мудрые герои. Сказания о нартах хранят множество деталей и сюжетов, совпадающих с описаниями скифских и аланских обычаев. Кроме того, повседневная домашняя жизнь нартов, как она отражена в сказаниях, практически не отличается от старого кавказского быта. Со славными нартами ты сможешь познакомиться в разделе «Сказания». Приятного прочтения!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: 83.0,
                )
              ],
            ),
          ),
          downPanel(context),
        ],
      ),
    );
  }
}
