-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2011 at 10:49 PM
-- Server version: 5.1.40
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `webcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE IF NOT EXISTS `tbl_articles` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `title_article` varchar(255) NOT NULL,
  `date_article` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_article` varchar(255) NOT NULL,
  `content_article` text NOT NULL,
  `type_article` enum('all','php','javascript','sql') DEFAULT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id_article`, `title_article`, `date_article`, `author_article`, `content_article`, `type_article`) VALUES
(1, 'История одной компьютерной войны', '2011-08-24 22:38:18', 'habrahabr', 'Данная заметка — сокращенный пересказ почти 10-летнего эпоса о находчивости и предательстве, изобретательности и хитрости, происходящих от человеческой лени. Началось все с того, что на неком айтишном факультете некого университета запустили для контроля знаний учащихся по одному из семестровых курсов систему дистанционного обучения. Дальнейшая борьба представляла из собой пошаговую стратегию с фазами в семестр, причем со стороны студентов каждый раз были новые люди со свежими идеями.\r\n\r\n\r\nФакультет: Раз уж обучение предполагалось дистанционное, то и контрольные работы (тесты) отпущены вам на проведение дома в удобное для вас время.\r\nСтуденты: Отлично! Все приходим в общежитие и сдаём тесты командами. Можно и вовсе посадить умного товарища сдавать за всю группу по очереди в обмен на какие-нибудь плюшки.\r\n\r\nФакультет: Что-то тут не так. Давайте в этом году вы будете все-таки сдавать тесты в фиксированное время в аудиториях факультета. Кстати, как и в прошлом году, перед тестом можно подготовиться, сдавая тренировочный тест любое число раз.\r\nСтуденты: Отлично! Мы написали скрипт, который сдает случайным образом тренировочный тест, пока не получает за него оценку в 100%. Выбранные ответы запоминаются и используются при дальнейших попытках, пока не будет полностью извлечена вся база вопросов. Дальше ее можно зазубрить, благо она не большая.\r\n\r\nФакультет: Больше вопросов! Извлекайте на здоровье, больше выучите.\r\nСтуденты: Мы создали сайт с идентичным интерфейсом, который проксирует наши запросы к системе дистанционного обучения, подправляя наши ответы на нужные. Без анализа весьма схожей адресной строки незаметно, что мы на другом сайте.\r\n\r\nФакультет: Система дистанционного обучения находится в локальной сети. Отключить к чертям внешний интернет в классах!\r\nСтуденты: Не страшно. Мы притащили на компы javascript, который при прохождении теста показывает правильный ответ в статусной строке браузера.\r\n\r\nСтудент Х: Извините, а мне вот система поставила 68 баллов, а должна была 78. Вот у меня распечатка с полным дампом ваших баз вопросов, в ней написано, что я ответил правильно, так что…\r\nФакультет: Да вы вконец обнаглели! Нельзя было показывать вопросы до теста. В этот раз мы предоставили вам 2 пула различных вопросов — для тренинга и для собственно теста. Кстати, больше нельзя локально хранить никакие файлы — это бездисковые станции, и они по-прежнему без доступа к интернету, а все USB-порты спереди и их очень хорошо видно.\r\nСтуденты: Паника! Паника!\r\n\r\nФакультет: Что-то у вас оценки стали ниже некуда! Возможно, со всей этой гонкой вооружений мы понаписали слишком сложные вопросы… Давайте вы на всякий случай получите 3 дополнительных попытки на пересдачу каждого теста.\r\nСтуденты: Интересное дело. У нас тут у одного умельца курсовая работа по распознаванию образов, а еще у вас флоппи-приводы работают.\r\nФакультет: Ну и что?\r\nСтуденты: А мы принесём на дискете программу, которая прячется в трей и коллекционирует скриншоты.\r\nФакультет: А что дальше? У вас будут вопросы, но не ответы же. Да и как вы соберете все вопросы?\r\nСтуденты: Разделение труда и чёткая организация. Армия смертников придет на пересдачу теста и честно завалит первую попытку, собрав коллекцию скриншотов. Всю следующую ночь ботаны будут эти скриншоты размечать. Затем на их базе генерится новая программа.\r\nДежурный по аудитории: Ой, а что это у вас мышь сама по экрану ездит и правильные ответы нажимает?!?!\r\n\r\nФакультет: Так дело не пойдет. Все пересдачи после зачетной сессии, отчего вам грозит недопуск до всех экзаменов.\r\nСтуденты: Хм, а ведь среди нас есть студенты с кафедры, где обитает администратор системы дистанционного обучения. %username%, а покажи пожалуйста статистику по моей группе. Смотри, можно сесть за вот эту замечательную зараженную трояном машину и ввести свой пароль вот тут. Так, а теперь мы выкачиваем всю базу вопросов нашего года при помощи платной анонимной прокси, на которую зайдем через анонимный WiFi (честное слово, они так и сделали!).\r\n\r\nФакультет: Что-то оценки у них подросли, а нарушений никаких не замечено. Наверное, взялись за ум и учат.\r\nСтуденты: Ура! Пароль администратора за весь год так и не менялся, мы тупо пользуемся достижениями прошлого поколения.\r\n\r\nСтудент Х: Извините, а мне вот система поставила 68 баллов, а должна была 78. Вот у меня распечатка с полным дампом ваших баз вопросов, в ней написано, что я ответил правильно, так что…\r\nФакультет: Так, у меня слов нет. Новый пароль, новые вопросы, база вопросов заливается на сервер за 24 часа до начала теста.\r\n\r\nСтуденты: Хм, а у вас система дистанционного обучения на локальном сервере не обновлялась уже 7 лет, так?\r\nФакультет: Ну да, ну и что с того?\r\nСтуденты: Да так, уязвимость одну нашли старенькую незакрытую. От любого юзера логинимся, а потом берем и через специально сформированный URL вытаскиваем из базы вопрос с заданным номером. Кстати, мы украли не только вопросы нашего года нашего курса, доступные нашему администратору, но и вообще все курсы, когда-либо читавшиеся через эту систему на данном сервере. На все это у нас ушло часов 6.\r\nРазработчики системы: Мы не можем накатить новую версию, т.к. аутсорсные дизайнеры еще не закончили рисовать интерфейс.\r\nФакультет: Блин :(\r\n\r\nВозможно, последовательность шагов сторон нарушена, да и не все фазы длились по полгода. Однако все описанные подходы и технические средства действительно использовались:\r\n\r\n    командная сдача\r\n    написание бота\r\n    фишинг (правда, обманывали не юзера, а наблюдателя)\r\n    пользовательский скрипт с ответами\r\n    скрытая тулза для сбора вопросов и автоответа\r\n    социальная инженерия\r\n    взлом\r\n\r\n\r\nБыли, конечно, и более типовые и примитивные инструменты: вики, форумы, группы вконтакте, где выкладывали запомнившиеся вопросы или сделанные через Paint скриншоты. Один человек и вовсе получил строгий выговор за фотографирование монитора сдающей группы через прозрачную стену.\r\n\r\nСтуденты способны на все, лишь бы не сдавать честно, но студенты-айтишники намнооого опаснее. Такая вот история. Если тут есть разработчики подобных систем или люди, имеющие отношение к учебному процессу, задумайтесь, от всего ли вы себя обезопасили — всё это не мифические потенциальные угрозы, а вполне осуществимые на практике вещи.\r\n\r\nUPD. Меня поправили, что надпись поверх адресной строки выводилась не пользовательским скриптом для браузера, а программой на Delphi. Кроме того, в минувшем году аналогичное решение также было разработано и выполнено как плагин к браузеру. ', 'all'),
(2, 'Управление конфликтами в хорошей компании', '2011-08-24 22:39:41', 'habrahabr', 'Конфликт во многом похож на воду – он переливается, стекает вниз и, в конце концов, размывает всё на своем пути, если его вовремя не остановить.\r\nА иногда он похож на красное вино – оставляет пятна.\r\n\r\nВ каждой компании, будь то только начинающий стартап или уже стабильно работающий бизнес, время от времени возникают конфликты.\r\n\r\nКак к ним относиться: избегать или наоборот радоваться, что людям не все равно? И какие плюсы можно извлечь из конфликтов? Предлагаю вашему вниманию точку зрения Джейсона Фрайда, соавтора нашумевшего ReWork и Getting Real.\r\n\r\nМне особенно интересно его мнение, т.к. сам управляю бизнесом с помощью их инструментов и подхода Get Real. Итак, вот текст Джейсона:\r\n\r\nЯ являюсь соучредителем самоуверенной компании 37signals, которая занимается разработкой программного обеспечения. Данный эпитет подходит нам как в процессе взаимодействия с внешним миром (в блогах, переговорах, интервью и пр.), так и в общении друг с другом. А так как у нас полувирутальная компания с сотрудниками в 12 различных городах, мы не имеем возможности пользоваться преимуществом языка тела, который помогает передавать тонкости при общении. Поскольку мы не видим друг друга, мы не можем улыбнуться собеседнику или сказать взглядом «Ну вы ведь понимаете, о чем я», чтобы пресечь конфликт на корню.\r\n\r\nПоэтому мы усвоили несколько вещей об управлении конфликтами. Разумеется, конфликт может угнетать. Но управляемый конфликт вещь хорошая – это плодородная почва для большого обмена идеями. Когда люди рьяно отстаивают свои позиции, то проблема начинает пониматься более глубоко. Пока люди отстаивают гениальную идею, а не свою гордость, можно много узнать.\r\n\r\nПриводить довод это одно. Приводить убедительный довод — это совершенно другое. Убедить себя в том, что по вашим ощущениям верно, не очень сложно, но сложно убедить в этом другого. Это заставляет вас сильнее обдумывать то, во что вы верите, и то, почему вы в это верите. И иногда одно это помогает увидеть другую сторону, а, возможно, даже передумать.\r\n\r\nКонечно, если хотите, чтобы работа была сделана, в конечном счете приходится принимать решение. Решения — это прогресс. Но когда нужно принимать важные и сложные решения, то скорее всего, независимо от степени вашей веры в свою идею, кто-то настолько же сильно верит в свою. Возможно, себя вы убедили, но остальные еще не убеждены. Или, может быть, они не убедили вас. Как выйти из сложившейся патовой ситуации и найти решение?\r\n\r\nДля начала стоит сделать шаг назад и понять, действительно ли вы расходитесь во мнении. Иногда то, что похоже на разногласие, всего лишь согласие, спрятанное в конкурирующей лексике.\r\n\r\nЯ называю это явление «ложным конфликтом» и вижу, что оно встречается довольно часто, особенно когда в дело вовлечены люди с разными навыками. Все потому, что у программистов один язык, у дизайнеров другой, у менеджеров третий. В маркетинге это называется так, а клиент называет это по-другому. Из-за недопонимания на базовом уровне возникает много конфликтов.\r\n\r\nПомню, мы как-то работали над новой функцией ПО для управления деловыми контактами Highrise. Эта конкретная функция была предназначена для отслеживания разговоров пользователей с их контактами. Дизайнер называл регистрацию данных «сообщением». Один программист называл ее «заметкой», а другой — «записью». А я, помнится, называл ее «постом». Мы все говорили об одном и том же и по существу соглашались насчет принципа работы, тем не менее, мы вскоре обнаружили, что спорим об этом. В чем причина? В том, что никто из нас не был точно уверен, о чем говорили остальные. Если бы мы тщательнее отнеслись к определению терминов в самом начале, было бы гораздо меньше споров и потраченного впустую времени. Все просто.\r\n\r\nВот почему мы стараемся как можно быстрее окунуться в реальность. У нас реальность подразумевает то, на что можно посмотреть, — рисунок, набросок, что-то наглядное. Пока все не посмотрят на одно и то же, будет сложно достичь реального соглашения. Пять человек могут читать один и тот же абзац, но часто они толкуют слова по-разному. Но когда посмотришь на картинку, модель, то гораздо вероятней придешь к соглашению – или же к обоснованному разногласию. По какому пути они бы не пошли, мы будем по крайней мере знать, где они на самом деле находятся. Указание на реальность сокращает дорогу к истине.\r\n\r\nЕсли вы обнаружите, что имеете дело с подлинным разногласием, тогда можно перейти к методам, помогающим разрешить конфликт. Методом, хорошо зарекомендовавшим себя на практике, конечно, является грубая сила: высшее должностное лицо делает звонок. Это может быть учредитель, исполнительный директор, президент или управляющий. В некоторых случаях это приходится сделать. Но в большинстве случаев я обнаружил, что это скорее отрицательно сказывается на боевом духе и уязвляет самолюбие, а не приводит к истинному соглашению. Ведь у человека наверху не всегда может быть правильная идея. И чем дальше начальник находится от реально выполняемой работы, тем менее вероятно его идея окажется правильной.\r\n\r\nНесмотря на это, практически все предприниматели признают, что им трудно не играть в диктатора. Мне тоже знакомо это чувство. Когда дело касается вашей компании, вашего видения и вашей окончательной ответственности, то кажется, что все звонки будете делать только вы один. Но если и правда начать так себя вести, увидите, что качество работы будет постоянно снижаться. Если коллеги знают, что вы запросто вмешаетесь и опровергните любую их работу, они не будут стремиться к лучшим результатам. А зачем? Если вам все равно ничего не понравится, тогда и неважно, насколько плохо была сделана работа.\r\n\r\nА вот как мы превращаем конфликт в нечто положительное и работаем в 37signals.\r\n\r\nМы обмениваемся. Метод основан на высоко ненаучной модели «Я получил одно; ты получишь следующее», которой ежедневно пользуются миллионы человек. Вы знаете принцип работы: идете обедать с другом и берете на себя расходы. В следующий раз так поступает он. Вы не следите за этим, так как знаете, что, в конце концов, все сравняется. А даже если не сравняется, то и так все по-честному.\r\n\r\nПоэтому иногда, когда мы спорим о детали в одном из наших продуктов, кто-то, в конце концов, уступит решение другому: «Хорошо, в этот раз мы принимаем вашу идею. Но в следующий раз это будет моя идея». Это не всегда происходит так буквально, но читается между строк. Просто не стоит биться за каждое последнее решение, пока одна из сторон не обессилит и будет не в состоянии продолжать бой. Иногда, чтобы двигаться дальше, нужно всего лишь по-дружески сказать «Тебе это, а мне следующее»; самолюбие остается нетронутым.\r\n\r\nВариацией на тему может служить вопрос в начале процесса: «Кто на самом деле сильнее это хочет?». Довольно редко два человека (или две группы людей) испытывают одну и ту же страсть к конкретной проблеме. Кто-то практически всегда проявляет больший интерес. Одни больше вложились или имеют более глубокое убеждение, или им просто сильнее остальных нужно победить. Поэтому иногда все, что требуется, это просто спросить. Выясните, кто больше заинтересован, и отдайте предпочтение ему. Когда-нибудь вы проявите больший интерес к чему-нибудь и получите это. В конечном итоге все уравновешивается.\r\n\r\nЕще один способ выяснить, кто в действительности готов отстаивать идею, это узнать, готовы ли они взять на себя ответственность, если что-то пойдет не так.\r\n\r\nСкажем, мы спорим о новой функции программы. Одна группа уверена, что функция вызовет проблемы у клиентов, в то время как другая настаивает, что все отлично сработает. В большинстве случаев мы отдадим предпочтение оптимистам, но с одним важным условием: они берут на себя ответственность за работу с покупателями и поддержку в случае возникновения проблем.\r\n\r\nПоэтому, если оказывается, что клиенты жалуются или дела в целом идут не так, все ложится на их спины. Им приходится отвечать на письма и иметь дело с негативной реакцией. Когда человек готов взвалить такое бремя на плечи, есть большой шанс, что у него правильная идея.\r\n\r\nРазумеется, не надо передавать решения людям, которые не в состоянии их принимать. Я не предлагаю делать низкие звонки, просто чтобы избежать длительных конфликтов. Во всем этом я допускаю, что каждый доказывает, по большей части, обоснованные положения. Если кто-то недостаточно осведомлен или спорит ради спора, худшее, что можно сделать, это передать полномочия.\r\n\r\nВ компании 37signals мы все разумные и компетентные люди. Надеюсь, то же самое можно сказать и о вашей компании. ', 'all'),
(3, 'пхп', '2011-09-01 23:39:58', 'серега', 'это я типа серега', 'php'),
(4, 'джс', '2011-09-01 23:40:33', 'серый', 'яху серый жги', 'javascript');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `id_new` int(11) NOT NULL AUTO_INCREMENT,
  `title_new` varchar(255) NOT NULL,
  `date_new` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_new` varchar(255) NOT NULL,
  `content_new` text NOT NULL,
  PRIMARY KEY (`id_new`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id_new`, `title_new`, `date_new`, `author_new`, `content_new`) VALUES
(1, 'Еще один интегратор из Европы пришел в Москву', '2011-08-22 19:30:55', 'Денис Легезо', 'Аутсорсинговый разработчик ПО и системный интегратор из Финляндии Digia открыл второй офис в России для увеличения числа локальных заказчиков. В Москве компания арендовала площадь в бизнес-центре в Даевом переулке недалеко от Чистых прудов.\r\n\r\nКроме заказной разработки (в первую очередь для клиентов из Финляндии), с которой начиналась деятельность Digia в России, компания специализируется на внедрении ERP и CRM Microsoft, а также ПО для бизнес-аналитики QlikView. Но пока публичных локальных клиентов у компании не много.\r\n\r\nПО Digia для тестирования удобства пользовательских интерфейсов в собственных разработках (UsabilityExpo) установлено в «Вымпелкоме». Для «Альфа-банка» российские разработчики финской компании написали приложение под Symbian «Альфа-мобайл» для работы с банковскими счетами через мобильный телефон.\r\n\r\nВ российской логистической компании Galaxy специалисты Digia развернули QlikView. И, наконец, на еще одном логистическом предприятии, работающем в Белоруссии и России - STA Logistic, внедряется ERP-система Microsoft Dynamics AX.\r\n\r\nОсновное российское представительство интегратора, в котором сейчас работает около 60 человек, включая программистов, появилось в 2008 г. и находится в Санкт-Петербурге. '),
(2, 'Американская фирма требует запретить продажи Mac OS X', '2011-08-22 21:30:15', 'Сергей Попсулин', 'Частная фирма Software Restore Solutions (SRS) из штата Иллинойс, специализирующаяся на разработке программных технологий, подала в американский окружной суд на Apple, требуя наложить запрет на продажи Mac OS X, сообщает AppleInsider.\r\n\r\nПоводом для недовольства послужила дисковая утилита (Apple Disk Utility). Как утверждают в компании, в этом приложении применяется технология автоматической конфигурации, права на которую принадлежат SRS. Технология описана как «метод автоматического сброса компьютера в требуемое состояние путем исполнения команд системной конфигурации».\r\n\r\nДисковая утилита предназначена для проверки и форматирования жестких дисков, записи DVD и работы с логическими разделами. Приложение входит в состав всех версий Mac OS X, начиная с первого релиза. Помимо запрета продаж в США, истец требует компенсации упущенной выгоды, размер которой не сообщается.\r\n\r\nОтметим, что продукты Apple становятся предметом судебных разбирательств достаточно часто. Компания является крупнейшей по капитализации и располагает финансовыми резервами в более чем $76 млрд, что делает ее объектом номер один среди компаний, не чуждых воспользоваться возможностью подразработать на патентном праве.\r\n\r\nНо есть и такие, кто с помощью патентных исков не нападает, а пытается защититься. В 2010 г. компания S3 Graphics обвинила «яблочного» вендора в нарушении патентов на технологии обработки и сжатия изображений на мобильных устройствах и персональных компьютерах. В июле Комиссия по международной торговле признала обвинения S3 Graphics справедливыми, и теперь уже HTC, объявив о приобретении S3, стремится использовать это в качестве козырной карты.\r\n\r\nКакой бы крошечной ни была SRS, ее иск нельзя недооценивать. В качестве примера можно привести дело малоизвестной i4i, которая в 2009 г. добилась запрета продаж Microsoft Word и компенсации в размере $290 млн за то, что Microsoft нарушила патент, связанный с языком разметки. Сама Apple уже попадала в подобные передряги - в 2010 г. ее обязали выплатить штраф в размере $625,5 млн за нарушение патента в программах Finder и iTunes. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_privs`
--

CREATE TABLE IF NOT EXISTS `tbl_privs` (
  `id_priv` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_priv`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_privs`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_privs2roles`
--

CREATE TABLE IF NOT EXISTS `tbl_privs2roles` (
  `id_priv` int(5) NOT NULL,
  `id_role` int(5) NOT NULL,
  PRIMARY KEY (`id_priv`,`id_role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_privs2roles`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `id_role` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_roles`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_sessions` (
  `id_session` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_last` datetime NOT NULL,
  PRIMARY KEY (`id_session`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_role` int(5) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_users`
--

