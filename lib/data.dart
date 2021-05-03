import 'package:flutter/cupertino.dart';

//цвета фона картинок для поделиться
var c1 = Color(0xFFF08080);
var c2 = Color(0xFFDB7093);
var c3 = Color(0xFF00FA9A);
var c4 = Color(0xFF66CDAA);
var c5 = Color(0xFF20B2AA);
var c6 = Color(0xFF7B68EE);
var c7 = Color(0xFF6A5ACD);
var c8 = Color(0xFFDA70D6);
var c9 = Color(0xFF00FA9A);

List <Color> colorsL = [c1,c2,c3,c4,c5,c6,c7,c8,c9];

//предсказания
List prediction = ["Занятие для вдохновения найдется само собой"
  ,"Тебя ожидает небольшое, веселое приключение"
  ,"Сегодня нагрянет курьер с долгожданной посылкой"
  ,"Тебя ожидает новый проект, в котором ты сможешь проявить свои лучшие качества"
  ,"Неожиданная находка может стать другом на всю жизнь"
  ,"Самое время избавиться от вредной привычки"
  ,"Не печалься от налетевшей тучки, завтра тыглянет солнышко"
  ,"Сегодня ты решишься на смену вида деятельности"
  ,"Попробуешь для себя что-то новое"
  ,"Твоя заветная мечта исполнится совсем скоро"
  ,"Друзья удивят интересным подарком"
  ,"Совсем скоро тебе станет доступно то, о чем ты мечтаешь"
  ,"Миловидная дама из близкого окружения даст полезный совет"
  ,"Осталось еще немного потерпеть, и все проблемы отступят"
  ,"Твой образ будет ослепительным в этом вечер"
  ,"Вечером тебя хорошенько отблагодарят"
  ,"Сегодня тебя ждет успех во всех начинаниях"
  ,"Праздники – это твой шанс обратить на себя внимание"
  ,"Сюрпризы и неожиданности будут завтра на каждом шагу"
  ,"Цель будет достигнута, и ничто не помешает тебе"
  ,"Продуманные действия приведут к замечательному результату"
  ,"Новый день принесет приятный сюрприз!"
  ,"Хватит быть лидером, расслабься и получи удовольствие"
  ,"Познакомишься с человеком, который в будущем будет тебе полезен"
  ,"Сегодня можно не беспокоиться за здоровье близких, им ничего не угрожает"
  ,"Сегодня у тебя достаточно энергии для новых свершений, не сиди на месте"
  ,"Настраивайся на изменения в жизни"
  ,"Сегодня можно действовать решительно без опасений"
  ,"Тебя ожидает приятный вечер в отличной компании"
  ,"Лучший друг исполнит твою заветную мечту"
  ,"По всем приметам, тебя ждет удача в любви"
  ,"Скоро на тебя нападут деньги, и ты от них не сможешь отбиться"
  ,"Откройся миру и к тебе потянутся"
  ,"Завтра день начнется с приятного сюрприза"
  ,"В скором времени тебе позвонит приятный человек из прошлого"
  ,"Вокруг много злых языков, но скоро у тебя появится надежный защитник"
  ,"Твоя верность старым друзьям будет вознаграждена"
  ,"Осторожно, тебя преследует удача!"
  ,"Маленькая неприятность улучшит твое настроение"
  ,"В ближайшее время тебя будут окружать только добрые и отзывчивые люди"
  ,"Вскоре у тебя может появиться домашний питомец"
  ,"Старый друг неожиданно нагрянет в гости"
  ,"Сегодня тебя ждет встреча с приятным незнакомцем"
  ,"Сегодня ты будешь летать на крыльях успеха"
  ,"Тебе предстоит принять решение, которое изменит твою жизнь"
  ,"Время начинать доверять людям"
  ,"Проведи вечер в кругу семьи, близкие приготовили для тебя приятный сюрприз"
  ,"Приложите еще немного усилий и начатое дело подойдет к логическому завершению"
  ,"Самое время все переосмыслить"
  ,"Откройся новым знакомствам, они окажутся очень полезными"
  ,"Сегодня можно делать все, что захочешь — фортуна благоприятствует тебе"
  ,"Поступившее предложение стоит обдумать, это твой шанс!"
  ,"Услышишь неожиданное признание"
  ,"Твои заслуги оценят по достоинству"
  ,"Тебя ждет отличный экстремальный отдых"
  ,"Вскоре тебя ждет большой семейный сбор"
  ,"Сегодня ты выполнишь поставленную тобою цель"
  ,"Завтрашнее утро начнется с приятных слов в твой адрес"
  ,"Удели время близким людям"
  ,"Ты победишь своего противника чувством юмора"
  ,"Намечаются важные изменения в жизни"
  ,"Сегодня ты будешь положительным примером для друзей"
  ,"Ты вскоре встретишь свою первую любовь"
  ,"Сегодня прояви решительность"
  ,"Тебя ждет крупная покупка в дом"
  ,"Старый друг поможет разрешить вопрос, который тебя давно волнует"
  ,"Риск — дело благородное. Рискуйте, это поможет преодолеть трудности."
  ,"Сегодня тебя посетит блестящая идея"
  ,"Сегодня будь внимательней: знакомые тебе «грабли» рядом"
  ,"Недавно прочитанная книга подкинет способы решения давних проблем"
  ,"Поддержка придет неожиданно"
  ,"Предпринятые усилия вскоре принесут свои плоды"
  ,"Сегодня сиди дома и жди удачу"
  ,"Добрые поступки приведут к успеху"
  ,"Надежда не напрасна – все будет хорошо!"
  ,"Держи телефон под рукой – важный звонок будет сегодня"
  ,"В ближайшее время ты познакомишься с удивительным человеком"
  ,"Приобретешь вещь, которую давно хотел"
  ,"Почаще ходи в гости, тебя ждут приятные неожиданности"
  ,"Вечер пройдет в романтической обстановке"
  ,"Тебя ждут приятные семейные посиделки"
  ,"Проблемы со здоровьем быстро решатся благодаря заботе близких"
  ,"Не надо печалиться, вся жизнь впереди"
  ,"Этот день ты запомнишь на всю жизнь"
  ,"Вечер порадует тебя: друзья готовят сюрприз"
  ,"В выходные могут реализоваться самые смелые фантазии"
  ,"Новые впечатления сделают жизнь ярче, запланируй встречу с друзьями"
  ,"Сегодня лучшее время сделать признание в любви"
  ,"Ты сегодня испытаешь восхитительные эмоции"
  ,"Скучные вещи и люди завтра покажут себя с неожиданной позитивной стороны"
  ,"Тебя ждут объятия любимого человека"
  ,"Завтра у тебя появятся новые друзья, доверься им"
  ,"Море удовольствия ждет тебя на выходных"
  ,"Завтра ты получишь ответы на все вопросы"
  ,"Сегодня все трудности будут разрешаться по щелчку пальцев!"
  ,"Счастье уже на твоем пороге, скорее открывай дверь"
  ,"Вскоре ты приобретешь нового надежного друга"
  ,"Сегодня день, благоприятный для интуитивных решений"
  ,"Будь внимательней к людям, в твоем окружении есть человек, который поможет решить проблемы"
  ,"Сегодня у Вселенной для тебя есть только один ответ – «Да, но позже»"
  ,"Летом тебя ждет интересное путешествие"
  ,"В следующем месяце тебя ожидает судьбоносная встреча"
  ,"Первый телефонный звонок завтра утром решит многие проблемы"
  ,"Звезды обещают тебе свою помощь и защиту"
  ,"Тебе позвонит давний знакомый с интересным предложением"
  ,"Завтра произойдет неожиданная встреча"
  ,"Бросай все, дерзай, сегодня ты в ударе"
  ,"Запланируешь новое путешествие в необычное место"
  ,"Спортивные тренировки принесут радость побед и укрепят здоровье"
  ,"Ожидай приглашения на веселое мероприятие"
  ,"Улучшение материального положения наступит скоро"
  ,"Улыбнись — и ты удивишься тому, что подарит тебе Вселенная"
  ,"Шанс представится, но тебе нужно подождать"
  ,"Сегодня тебе удастся блеснуть интеллектом и получить за это бонусы"
  ,"Тебя ждет необычное, но очень приятное предложение"
  ,"Покупки, сделанные сегодня, принесут большую пользу"
  ,"Завтра ты подберешься к своей мечте"
  ,"Сегодня ты примешь важное решение"
  ,"Не придумывай лишнего – тебя и так любят"
  ,"В семье близких тебе людей ожидается пополнение"
  ,"Сегодня твои советы будут очень нужны окружающим"
  ,"Проведай близких тебе людей"
  ,"Прояви настойчивость, и успех не заставит себя ждать"
  ,"Ты сможешь покорить самую высокую вершину, если не испугаешься"
  ,"Пассивные, спокойные выходные принесут пользу"
  ,"В этом месяце есть возможность освоить новое хорошо оплачиваемое дело"
  ,"Пора бы отправиться в отпуск"
  ,"Недавно полученная информация станет хорошим толчком к решительным действиям"
  ,"Чаще проверяй почту, тебе придет важное письмо"
  ,"Сегодня все пойдет по плану"
  ,"Не упускай возможность научиться новому"
  ,"Сегодня тот самый момент — лови его!"
  ,"Судьбоносная встреча кардинально изменит твою жизнь"
  ,"Найдешь единомышленника, который поможет тебе добиться успеха в твоем деле"
  ,"Смена сферы деятельности не за горами"
  ,"Никто не сможет помешать твоим планам"
  ,"Если сейчас на небе есть облака – твой успех близко, если нет – посмотри завтра"
  ,"Удача уже на пути к тебе, сделай первый шаг ей навстречу"
  ,"Сегодня ты окажешь помощь близкому человеку"
  ,"Сегодня случится то, что ты так давно ждешь"
  ,"Радость чужим успехам привлекает удачу – положи в кошелек портрет Рокфеллера"
  ,"Очень скоро получишь известие, которое многое изменит"
  ,"Проявленная завтра инициатива обязательно принесет успех"
  ,"Сегодня все внимание будет направлено на тебя, воспользуйся этим правильно"
  ,"Тебе предложат поучаствовать в интересном мероприятии"
  ,"Новое хобби положит начало интересному делу"
  ,"Твои поступки правильные — время расставит все по местам"
  ,"В ближайшее время вокруг тебя будут происходить настоящие чудеса: будь внимательнее!"
  ,"Сегодня именно тот день, когда можно рискнуть по-крупному"
  ,"Проблема, которая давно тебя мучает, сегодня разрешится"
  ,"Удивляй людей тем, что ты умеешь делать лучше всех. Сегодня это принесет успех"
  ,"Сегодня ты будешь вести себя не логично, но это пойдет всем на пользу"
  ,"Сегодня самый удачный день для тебя – максимально используй его"
  ,"Сегодня ты встретишь свою любовь"
  ,"Ничто не помешает тебе провести отличный вечер"
  ,"Надежды мало – надо действовать!"
  ,"Зачем волноваться и переживать, если можно не волноваться и не переживать"
  ,"Присмотрись, вокруг тебя витает атмосфера любви и романтики"
  ,"Прояви свои лидерские качества, это обернется для тебя неплохими дивидендами"
  ,"Совет близкого человека поможет решить проблему"
  ,"В ближайшие несколько дней ты будешь чувствовать прилив сил, который позволит осуществить все задуманное"
  ,"Вечером ожидай необычное известие"
  ,"Пришло время для новых впечатлений: сделаешь что-то необычное"
  ,"Банальная прогулка подарит неожиданные впечатления"
  ,"Ближайшие выходные пройдут ярко и незабываемо"
  ,"Завтра поступит неожиданное деловое предложение – над ним стоит подумать!"
  ,"Сегодня родня окружит тебя заботой"
  ,"Неожиданная неприятность превратится в удачу"
  ,"Неожиданный отпуск? Почему бы и да!"
  ,"Завтра не стоит отвлекаться на пустые разговоры"
  ,"Скоро ты получишь хорошую новость, которая положительно повлияет на твою жизнь"
  ,"Тебя ждут яркие победы, но для этого придется приложить усилия"
  ,"Сегодня тебе удастся раскрыть любой обман"
  ,"Не откладывай на потом то, что можно сделать сегодня"
  ,"Спортивные усилия последних недель благотворно скажутся на здоровье"
  ,"Случайная ссора обернется удачей"
  ,"Попробуй что-то новое — последствия удивят тебя"
  ,"Смотри людям прямо в глаза – многие начнут говорить тебе: «Здравствуйте!»"
  ,"Смелее принимай решения, и давняя цель будет достигнута"
  ,"Быстрые и ответственные решения вскоре обернутся успехами"
  ,"Побалуй себя чем-то вкусненьким"
  ,"Родственники удивят неожиданным сюрпризом"
  ,"Сегодня время перемен"
  ,"Твои искренние чувства найдут понимание и поддержку"
  ,"Не ищи отговорок, действуй прямо сейчас, удача не станет долго ждать"
  ,"Откажись на время от вредной пищи, именно сейчас лучший момент, чтобы поправить здоровье"
  ,"Вскоре произойдет знакомство с человеком, который будет тебя оберегать"
  ,"Интересные и полезные занятия поднимут настроение"
  ,"Не бойся совершать первые шаги навстречу другим, тебе нужны новые друзья"
  ,"Приложите еще немного усилий, и давняя мечта начнет сбываться"
  ,"Порадуй близких тебе людей"
  ,"Сегодня ты будешь отлично тыглядеть в любом наряде"
  ,"С сегодняшнего дня твоя жизнь изменится в лучшую сторону"
  ,"Есть сомнения? Погугли…"
  ,"Во второй половине дня напомнят о себе важные люди"
  ,"Старый друг раскроется с неожиданной стороны"
  ,"Начни идеальный день с хорошего настроения"
  ,"На этой неделе можешь смело тратить деньги: от этого твое благосостояние только улучшится"
  ,"Решишься на важный шаг в жизни"
  ,"Друзья завтра тебе сделают подарок"
  ,"Завтра будь настойчивей, и все получится"
  ,"Твое доверие к людям принесет плоды: встреча пройдет отлично"
  ,"Ты поймешь сегодня, кто достоин твоей любви"
  ,"Начинай новое дело, не сомневайся, все получится"
  ,"Гони от себя хандру, сегодняшний день для веселья"
  ,"Самое время совершить желаемую покупку"
  ,"Отложи все сомнения, действуй, только так удастся добиться успеха"
  ,"Ты станешь героем этого дня"
  ,"Твое влияние на коллег окажется благотворным"
  ,"Сегодня удача на твоей стороне: лови ее за хвост!"
  ,"Удели время своим близким"
  ,"Завтра обычные дела ты сделаешь с необычной легкостью"
  ,"Получить желаемое будет легче после 25 числа"
  ,"Самые необыкновенные желания могут сбыться на этой неделе"
  ,"Ты найдешь приятный способ экономить деньги"
  ,"Случайная находка приведет к успеху"
  ,"Сделай сегодня все, что запланировано, только так удастся добиться успеха"
  ,"В ближайшее время ты будешь буквально летать от счастья"
  ,"Удели день отдыху с семьей"
  ,"Тебя ждет романтическое свидание с давним поклонником"
  ,"Цифра 13 сегодня удивит тебя"
  ,"Терпение поможет выиграть, и не только время"
  ,"Если перед тобой закрылись двери, это значит, что скоро откроются новые"
  ,"В твой дом очень скоро придет достаток и гармония"
  ,"Познакомишься с человеком, который станет твоим наставником"
  ,"День будет богат на сюрпризы!"
  ,"Пора начинать все сначала"
  ,"Важная информация, пришедшая в конце дня, может оказаться весьма актуальной"
  ,"Время устроить выходной. Тебя ждет отличный день!"
  ,"Бардак – это твоя карма на сегодня и только пылесос поможет изменить это"
  ,"Получишь дельный совет от незнакомца"
  ,"Начни следующее утро с медитации"
  ,"Хочешь любви — действуй"
  ,"Сегодняшний вечер лучше провести вне дома, судьбоносная встреча уже ждет тебя"
  ,"Полученные сегодня известия помогут избежать неприятной ситуации"
  ,"Тебя ждет важная новость"
  ,"Впереди еще много свершений, не сиди на месте"
  ,"Недоброжелатели неожиданно принесут тебе пользу"
  ,"Твои недруги обессилены, действуй, тебе никто не сможет помешать"
  ,"Незнакомые люди помогут тебе справиться с давним вопросом"
  ,"Завтра будет увлекательный день"
  ,"Уверенность должна стать твоим лучшим другом на сегодня"
  ,"Тебя ожидают спокойные выходные"
  ,"Сегодня друзья тебя не оставят в покое"
  ,"В следующем месяце ты познакомишься с человеком, который поможет решить важные вопросы"
  ,"Не трать деньги – завтра день подарков"
  ,"Сегодня все твои желания исполнятся"
  ,"Завтра все будет по-твоему"
  ,"Через сутки ты будешь гордиться собой"
  ,"Тебя скоро ждет пополнение в семье"
  ,"Не отказывайся от встречи с друзьями, тебя ждет приятный вечер"
  ,"Сегодня твой день"
  ,"Сегодня хороший день нарисовать свою мечту на листе бумаги, и лучше красками!"
  ,"Возможностей много — выбери одну, она будет правильной"
  ,"Скоро ты прочитаешь книгу, которая перевернет твое мировоззрение"
  ,"Любви все возрасты покорны. Все будет хорошо."
  ,"Любая неприятность обернется для тебя выигрышем"
  ,"Ты увлечешься чем-то новым"
  ,"Не сомневайся, удача на твоей стороне"
  ,"Руководитель заметит твои старания"
  ,"Стрела Амура уже летит в твоем направлении — лови!"
  ,"В скором времени ты познакомишься с настоящей звездой"
  ,"После дождя обязательно выйдет радуга. Не расстраивайся"
  ,"Найти ответ на сложный вопрос помогут близкие люди"
  ,"Сегодня придется много работать, но результат тебя приятно удивит"
  ,"Избавься от одного недостатка, и все изменится к лучшему!"
  ,"Сегодня благоприятный день для модных покупок: время заняться гардеробом!"
  ,"Найди себе занятие по душе, и мир откроет свои тайны"
  ,"У тебя получится отдохнуть столько, сколько нужно для восстановления сил"
  ,"Сомневаешься? Подбрось монетку!"
  ,"Ты сможешь тыбрать то, что захочешь, из предложенных судьбой вариантов"
  ,"Твои таланты оценят — не бойся их показать"
  ,"Если продуктивность сегодня на нуле, не расстраивайся. Тебе нужна передышка"
  ,"Сегодня родители будут тобой гордиться"
  ,"Любимый человек готовит тебе подарок"
  ,"Скоро ты получишь то, чего как долго желаешь"
  ,"Займешься чем-то новым и интересным!"
  ,"У тебя проявится неожиданное умение, которое порадует окружающих"
  ,"Сегодняшний день будет очень позитивным!"
  ,"Результат твоих действий может оказаться неожиданным"
  ,"Не бойся совершить ошибку, она поможет тебе разобраться в ситуации"
  ,"Твое творчество в ближайшее время получит тысокую оценку "
  ,"Вскоре получишь весточку от неожиданного человека"
  ,"Богатый человек захочет сделать тебе подарок просто так"
  ,"Тебя ждут новые знакомства"
  ,"Сегодня тебя настигнет любовь"
  ,"Ближе к вечеру жди приятных новостей"
  ,"В учебе сложится все отлично"
  ,"Сегодня исполнится одно из твоих давних мечтаний"
  ,"В скором времени тебе предстоит дальняя поездка"
  ,"Решишься сделать то, о чем давно мечтал"
  ,"Избавишься от работы, которую не хочешь делать"
  ,"Время для путешествий выбрано правильно! Не откладывай сборы"
  ,"Случайное знакомство окажется для тебя судьбоносным"
  ,"Ожидай важной информации от близкого человека"
  ,"Сегодня тебе удастся полностью забыть о невзгодах"
  ,"Скоро ты получишь вознаграждение из неожиданного источника"
  ,"Творческий подход поможет в решении старых проблем"
  ,"Найдешь ту вещь, которую давно искал"
  ,"Друзья поддержат твой смелый план"
  ,"Сегодня подходящий день, чтобы поменять пароли"
  ,"Правду ты узнаешь завтра"
  ,"Тебе нужно немного отдохнуть и привести мысли в порядок"
  ,"Вскоре получишь неожиданный подарок от близкого человека"
  ,"В скором времени ты получишь очень приятное известие"
  ,"Скоро ты обретешь нового друга"
  ,"В твоей жизни наступает момент, когда все финансовые операции будут приносить выгоду"
  ,"Сегодня будет лучший момент в твоей жизни"
  ,"Избегай споров и конфликтов в семье, только так удастся сохранить мир"
  ,"Проблема, которая тебя долго мучила, скоро разрешится"
  ,"Стоит купить лотерейный билет — тебя ждет удача!"
  ,"Судьба преподнесет отличную возможность изменить жизнь. Не упусти!"
  ,"Деньги придут с легкостью через один понедельник"
  ,"Прислушайтесь к своему сердцу, оно поможет сделать правильный тыбор"
  ,"Друзья одобрят твое предложение и помогут его осуществить"
  ,"Ничто не помешает твоим планам"
  ,"Пообщайся со знакомыми, они подскажут тебе верное решение проблемы"
  ,"Твои усилия не останутся не замеченными"
  ,"Оденься поярче, тебя сегодня должны заметить"
  ,"Сегодня случится то, что заставит тебя улыбаться"
  ,"Позитив – твое оружие, используй его по полной"
  ,"Скоро тебе подарят цветы"
  ,"Сегодня тебя будут защищать высшие силы"
  ,"Сегодня ты закончишь большой проект!"
  ,"Удели время изучению чего-то нового, это в скором времени принесет свои плоды"
  ,"Не сдавайся на полпути, успех уже близок"
  ,"В скором времени в общественном месте произойдет интересное знакомство"
  ,"Встретишь человека, близкого тебе по духу"
  ,"Будь реалистом – заведи будильник на 9-00"
  ,"На этой неделе возможен приезд долгожданного человека"
  ,"Займись творчеством, тебя ждут в нем большие успехи"
  ,"Тот, о ком ты думаешь, даст о себе знать!"
  ,"Недорогая покупка порадует тебя неожиданно высоким качеством"
  ,"Путь выбран верный — успех близко"
  ,"Пятничный вечер подарит приятные впечатления"
  ,"Не строй сегодня никаких планов – пусть все идет своим чередом"
  ,"У тебя появится новый пушистый друг!"
  ,"Сегодня каждое событие будет тебе на руку"
  ,"Скоро тебя ждет встреча с человеком из прошлого"
  ,"Прояви бдительность, тогда завистники не смогут тебе навредить"
  ,"Неожиданная поддержка придет от постороннего человека"
  ,"От ближайшей поездки ожидай ярких впечатлений"
  ,"Близкие подарят тебе много приятных минут"
  ,"Случайная встреча принесет удачу"
  ,"Не отказывайся от заманчивого предложения друзей, оно может повлиять на дальнейшую жизнь"
  ,"Учиться никогда не поздно"
  ,"Тебя не понимают – поменяй аватарку или статус"
  ,"Применяя нестандартные решения, ты быстро добьешься успеха"
  ,"Тебе поступит выгодное предложение!"
  ,"Самое время заняться спортом, это позволит избежать проблем со здоровьем"
  ,"Что бы ни случилось, день закончится хорошо"
  ,"Будь в курсе новостей! Случайное известие положительно повлияет на результат"
  ,"Проверь папку «спам» — там может быть что-то важное!"
  ,"Займись тем, о чем давно мечталось, это принесет не только удовольствие, но и прибыль"
  ,"Только семья и близкие люди помогут тебе"
  ,"Можешь забыть о финансотых проблемах, тебя ждет серьезная прибыль"
  ,"Подруга поделится секретом, который тебя обрадует"
  ,"Сегодня велика вероятность получения внезапной прибыли"
  ,"Весьма скоро ты разбогатеешь"
  ,"Сегодня у тебя будет получаться все, за что ты только ни возьмешься"
  ,"Ты будешь лидером в коллективе"
  ,"Не бойся любви – все равно от нее не убежишь"
  ,"А знаешь, все еще будет, южный ветер еще подует"
  ,"Говори окружающим больше комплементов, тебя ждут сюрпризы"
  ,"Сегодняшний день будет удачным для любых новых дел"
  ,"Завтра тебя ждет уйма незабываемых впечатлений"
  ,"Завтрашний день будет благоприятным для любых начинаний"
  ,"Не расстраивайся из-за ерунды, ерунда же из-за тебя не расстраивается"
  ,"Проведешь приятный день в кругу семьи"
  ,"Неожиданный комплимент поднимет настроение"
  ,"Твои родные верят в твой успех"
  ,"Новости, которые ты узнаешь сегодня вечером, помогут решить давние проблемы"
  ,"Может ты не там ищешь свое счастье? Посмотри вокруг"
  ,"Сегодня сбавьте обороты и не торопитесь, иначе усталость в конце дня даст о себе знать"
  ,"Вечером ты получишь предложение, от которого не сможешь отказаться"
  ,"Сегодня самое время воспользоваться всеми ранее полученными знаниями"
  ,"Все двери перед тобой закрыты? Не теряй времени! Выбирай любую и действуй!"
  ,"На этой неделе ждет тебя крупный подарок"
  ,"Ты сегодня будешь рваться к победе"
  ,"Скоро ты получишь важное сообщение, будь внимательней"
  ,"Ты на правильном пути – тебя ждет успех!"
  ,"Не бойся перемен, они пойдут тебе на пользу"
  ,"Твоя сила воли не подведет"
  ,"Посвяти этот день себе"
  ,"Сегодня стоит просчитывать каждый свой шаг, тогда удача тебе улыбнется"
  ,"Внимательно смотри по сторонам, для тебя заготовлены судьбоносные подсказки"
  ,"Сегодня ты будешь в центре внимания"
  ,"Общение с новыми людьми будет для тебя продуктивным"
  ,"Сегодня хороший день для игры по-крупному"
  ,"У тебя есть силы поддержать того, кто слабее"
  ,"Не забывай про друзей"
  ,"Тебя ждет сюрприз от близкого человека"
  ,"Хлопоты в скором времени увенчаются успехом"
  ,"Удели день релаксу"
  ,"В ближайшее время твое хобби принесет прибыль"
  ,"Не торопись с принятием важных решений, спокойствие, только спокойствие"
  ,"Ожидай сюрприз от близкого родственника"
  ,"Сейчас самое время для воплощения идей"
  ,"Есть возможность начать все с нуля"
  ,"Начни воплощать мечты в жизнь"
  ,"Если сегодня ты увидишь паучка в своем доме – это к счастью"
  ,"Тебе сегодня повезет, вот увидишь!"
  ,"Ты успеешь сделать все запланированное"
  ,"Сегодня удели время работе по дому"
  ,"Максимально используй сложившуюся ситуацию"
  ,"Добьешься успехов в деле, над которым сейчас работаешь"
  ,"Творческие задумки вскоре будут реализованы в интересное хобби"
  ,"Приготовься к приятным неожиданностям"
  ,"Сейчас отличное время для сдачи любого экзамена"
  ,"Прояви настойчивость и тогда давняя проблема разрешится"
  ,"Сегодня ты обретешь нового верного друга"
  ,"Неожиданная радость скоро ворвется в твою жизнь"
  ,"В ближайшие дни даже черные кошки будут приносить тебе удачу"
  ,"Фортуна на твоей стороне"
  ,"Ничего не бойся, фортуна на твоей стороне"
  ,"В ближайшем будущем друг пригласит тебя в совместное путешествие"
  ,"Оглянись вокруг – то, что ты ищешь совсем рядом"
  ,"Позаботься о близких, и они ответят тебе тем же"
  ,"Этот день даст ответ на твой вопрос"
  ,"Обращай внимание на знаки, они подскажут, что делать"
  ,"Сегодня твои мечты будут сбываться с головокружительной быстротой"
  ,"Прояви осторожность с новыми знакомыми"
  ,"Любая погода будет тебе «на руку» и поможет принять решение"
  ,"Сегодня тебе предстоит принять важно решение, не торопись с выбором"
  ,"Это будет самый яркий месяц года"
  ,"Дело, начатое в следующий понедельник, обязательно порадует результатом"
  ,"Вскоре ты услышишь слова, которые так давно ждешь"
  ,"У тебя появится новое интересное хобби"
  ,"Ожидается весомое пополнение кошелька: найдешь в старой одежде деньги"
  ,"Сегодня ты поймешь, кому из друзей стоит доверять на все сто"
  ,"Скоро наступит время делать деньги"
  ,"В ближайшем будущем тебе удастся достигнуть цели"
  ,"Сдашь важный жизненный экзамен на «отлично»"
  ,"Сегодня самое время завершить все начатые дела"
  ,"Тебя ждет небольшая поездка"
  ,"На этой недели ты приобретешь то, о чем давно мечтаешь"
  ,"С этого момента только упорство поможет добиться цели"
  ,"Сейчас не самое хорошее время для диеты, лучше закажи суши"
  ,"Поступит предложение о выгодном партнерстве"
  ,"Совет от незнакомого человека поможет тебе решить давнюю проблему"
  ,"Утро начнется с радостных событий"
  ,"Планируй дальнюю поездку"
  ,"Поделись улыбкою своей"
  ,"Вечер воскресенья порадует хорошей новостью"
  ,"Разложи красиво все деньги в кошельке – это привлечет новые"
  ,"Вскоре тебе придется выступить организатором большого дела"
  ,"Сегодня ты найдешь давнюю пропажу (если сделаешь генеральную уборку)"
  ,"Игнорируй завистников, и будет тебе счастье"
  ,"Сегодня слушай, что говорят другие – это поможет тебе найти выход"
  ,"Проведи вечер в приятной компании"
  ,"Близкий человек обрадует неожиданным известием"
  ,"Друзья помогут быстро решить насущные вопросы"
  ,"Сегодня день для рутины, не для эмоций"
  ,"Твои биоритмы в позитивной фазе, используй это"
  ,"Сегодня ты узнаешь что-то важное"
  ,"У тебя будет возможность сэкономить большую сумму денег без ущерба для себя"
  ,"Вечером неожиданный звонок изменит твою жизнь"
  ,"Сегодня тебе вернут долг, о котором ты уже давно забыл"
  ,"Публикация в соцсетях приведет к приятному знакомству"
  ,"Напишет тот, о ком ты так долго думаешь"
  ,"Сегодня тебя во всем ждет успех"
  ,"Нужно попробовать все возможное, чтобы достичь невозможного"
  ,"Идеальный вечер будет сегодня"
  ,"Твоя мечта вот-вот сбудется!"
  ,"Помиришься с тем, с кем недавно была ссора"
  ,"Тебе вскоре откроется истина, которая поможет понять, кто друг, а кто враг"
  ,"Тебя ожидают скидки и выгодные предложения"
  ,"Не слушай советы – доверься своему сердцу"
  ,"Не спеши, иначе это может навредить делу"
  ,"Получишь неожиданный подарок от друга"
  ,"За завтраком тебя весьма обрадуют"
  ,"Уверенность принесет тебе успех"
  ,"Сегодня ты будешь купаться во внимании!"
  ,"Пора начинать радоваться жизни"
  ,"В твоем окружении в ближайшем времени появится приятный человек"
  ,"Ты почувствуешь себя большим авторитетом"
  ,"Стоит отправиться по магазинам: обувь твоей мечты совсем рядом!"
  ,"Купи себе яркую вещь, она принесет удачу"
  ,"Нет уверенности в чем-то? Погугли …"
  ,"В конце недели тебя ждет скидка в любимом магазине"
  ,"Тебя ждет приглашение на вечеринку или дружескую встречу"
  ,"Болезни обойдут тебя стороной, и окружающие будут всячески заботиться о тебе"
  ,"Не сомневайся! Запланированная поездка изменит твою жизнь к лучшему"
  ,"Скоро у тебя появится возможность исполнить свою заветную мечту"
  ,"Друзья тобою очень дорожат, не подведи их"
  ,"Не бойся рисковать, опасность тебе не угрожает"
  ,"Хороший день, чтобы рассчитаться с долгами"
  ,"Сегодняшние твои мысли через неделю превратятся в поступки"
  ,"Друзья устроят приятный сюрприз"
  ,"Сделай сегодня то, о чем давно мечтал"
  ,"Очень скоро на тебя обратит внимание человек, от которого зависит твое будущее"
  ,"Следующая неделя подарит расслабление и отдых"
  ,"Эта неделя будет весьма продуктивная для тебя"
  ,"Твоя мысль – это всего лишь волны, но ее последствия ее материальны"
  ,"Не отказывайся от странного предложения"
  ,"Пора отдохнуть на полную"
  ,"Тебя пригласят в интересное место"
  ,"Не отказывайся от встречи – она изменит положение"
  ,"Тебя ждет долгожданное повышение по службе"
  ,"Ты получишь ответы на многие вопросы, и это изменит твое положение к лучшему"
  ,"День преподнесет встречу с близкими друзьями"
  ,"Правая рука чешется к деньгам, но сегодня деньги появятся даже без примет"
  ,"Прими то, что не можешь изменить – это улучшит самочувствие"
  ,"Проведи незабываемую ночь"
  ,"Неожиданный комплимент от незнакомого человека поднимет настроение"
  ,"Неожиданную удачу принесет апельсин"
  ,"Все проблемы решатся, наступят мир и спокойствие"
  ,"Не обращай внимания на погоду, в твоей жизни наступают солнечные дни"
  ,"Сегодня забудь про невозвращенный долг: его все равно не вернут, а жить станет легче"
  ,"Удача сегодня настигнет тебя"
  ,"Сегодня возможны неожиданные приятные подарки"
  ,"Незнакомый человек признается тебе в нежных чувствах"
  ,"Планируй потратить большие деньги на крупную покупку"
  ,"Неожиданное изменение планов в итоге станет для тебя большой удачей"
  ,"Встреча со старым знакомым принесет новые идеи"
  ,"Бери друзей и бегом отдыхать"
  ,"Сейчас правильное время, чтобы двигаться дальше"
  ,"В выходные ты будешь демонстрировать таланты и умения"
  ,"Не отступай от намеченного плана и вскоре добьешься успеха"
  ,"Завтра тебя ожидает легкий, приятный день"
  ,"Неожиданный знак внимания от того, кого ты раньше не замечал"
  ,"Ты услышишь новость, которая сулит финансовую прибыль"
  ,"На этой неделе найдется занятие для вдохновения"
  ,"Человек, с которым ты познакомились недавно, поможет справиться с трудностями"
  ,"Вечером тебя ждет неожиданная встреча"
  ,"Сделай сегодня то, что давно откладываешь на потом"
  ,"Обязательно купи лотерейный билет, тебе должно повезти"
  ,"Авторитетный человек проявит к тебе благосклонность"
  ,"Вскоре произойдет событие, о котором ты будешь рассказывать в старости внукам"
  ,"Ложись сегодня спать до полуночи, тебе приснится классный сон"
  ,"Тебя ждет беззаботный тыходной!"
  ,"Расскажи про чихалку друзьям и вечером тебя ждет сюрприз"
  ,"Напряженные отношения вскоре разрешатся после откровенного разговора"
  ,"Твои близкие готовят тебе незабываемый подарок"
  ,"Сделай подарок любимому человеку, это поможет укрепить отношения"
  ,"Не печалься от расставания, впереди интересные встречи"
  ,"В выходные предстоит большая уборка жизненной территории"
  ,"Неожиданная встреча будет очень приятной"
  ,"Завтра будет лучше, чем вчера"
  ,"Сегодня идеальный день чтобы сделать первый шаг"
  ,"Сегодня твои усилия будут вознаграждены"
  ,"Тебя ждет небольшое путешествие"
  ,"Посмотри свой любимый фильм, ты увидишь решение своей проблемы"
  ,"Тебя ожидает головокружительное приключение"
  ,"Скоро ты неожиданно получишь ценный подарок"
  ,"Сегодня отличный день для походов по магазинам, все покупки окажутся успешными"
  ,"Сегодня все, кто на тебя обижен, будут готовы тебя простить"
  ,"Сегодня друг поможет решить твою проблему"
  ,"Купи сегодня какую-нибудь безделушку, она станет для тебя настоящим талисманом"
  ,"Полученные сегодня новости подскажут как достичь успеха"
  ,"Прилив энергии даст толчок новым проектам, начинаниям, идеям"
  ,"Скоро ты себя покажешь с другой стороны"
  ,"Самый лучший день для тебя наступит завтра"
  ,"Освободи вечер, сегодня тебя ждет приключение"
  ,"Не используй треугольники в любви, особенно в этом году"
  ,"Ничто не сможет помешать твоему отдыху: наслаждайся"
  ,"Тебя ждет вечер в приятной компании"
];