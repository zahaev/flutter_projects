import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [Rectangle1(), Rectangle2(), Rectangle3()]),
        ),
      ),
    );
  }
}

class Rectangle1 extends StatefulWidget {
  @override
  _Rectangle1State createState() => _Rectangle1State();
}

class _Rectangle1State extends State<Rectangle1> {
  double _rotationAngle = 0.0;

  void _rotateImage() {
    setState(() {
      _rotationAngle += 90.0; // Поворот на 90 градусов при каждом нажатии
    });
  }

  @override
  Widget build(BuildContext context) {
    final double blockWidth = 1920;
    final double blockHeight = 1083.15;

    return SizedBox(
      width: blockWidth,
      height: blockHeight,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 290,
              top: 380,
              width: 1340,
              height: 400,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'GREEENCO.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 300,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFDADADA),
                ),
              ),
            ),),
            Positioned(
              left: 786,
              top: 277,
              width: 574,
              height: 806,
              child: GestureDetector(
                onTap: _rotateImage,
                child: Transform.rotate(
                  angle: _rotationAngle * (3.141592653589793 / 180), // Преобразуем градусы в радианы
                  child: Image.network(
                    'https://yandex.ru/images/search?img_url=http%3A%2F%2Favatars.mds.yandex.net%2Fget-altay%2F11005869%2F2a0000018fc3ea8fe5784e8387751fa3b3e7%2Forig&lr=35&pos=0&rpt=simage&source=serp&text=%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8%20%D0%BB%D0%B5%D1%81%D0%B0',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 290,
              top: 380 + 320,
              height: 56,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Nature’s souvenir store",
                  style: GoogleFonts.akronim(
                    fontSize: 48,
                    color: Color(0xFF7A797A),
                ),
              ),
            ),),
            Positioned(
              left: 290,
              top: 72,
              width: 38,
              height: 40,
              child: Icon(
                Icons.drag_indicator,
                size: 40,
                color: Color(0xFFB7BBB2),
              ),
            ),
            Positioned(
              left: 1577,
              top: 72,
              width: 53,
              height: 39,
              child: Icon(
                Icons.house,
                size: 39,
                color: Color(0xFFB7BBB2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Rectangle2 extends StatefulWidget {
  @override
  _Rectangle2State createState() => _Rectangle2State();
}

class _Rectangle2State extends State<Rectangle2> {
  double _scale = 1.0;

  void _scaleImage() {
    setState(() {
      _scale = _scale == 1.0 ? 1.5 : 1.0; // Переключаем масштаб между 1.0 и 1.5
    });
  }

  @override
  Widget build(BuildContext context) {
    final double blockWidth = 1921;
    final double blockHeight = 1083;

    return SizedBox(
      width: blockWidth,
      height: blockHeight,
      child: Stack(
        children: [
          Container(color: Colors.white),
          Positioned(
            left: 0,
            top: 0,
            width: blockWidth,
            height: 793,
            child: ColoredBox(color: Color(0xFF4A4A4A)),
          ),
          Positioned(
            left: 290,
            top: 141,
            width: 640,
            height: 929,
            child: GestureDetector(
              onTap: _scaleImage,
              child: Transform.scale(
                scale: _scale,
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/076d/c686/8bab6e4c18dcf9a0a612fec4ddcd780b?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Md8L5-uyMuNyHRk-uiGmujM1U5k4duGCoPw4cXATXY7cFyE7srC0FJnrFG1oa1pJ2OwZpFco4JAHqQY8dQ4-ijAoPLENyM29VU5zFcXhuBcdqivXxN2PHNGq7z2lPeNI68dZKbh07oVgkVHKKPEoBzm81zm9pMubTkSR6sp5b1lT3THCrn-ZzHVGNSKF-gL9dItUCpkqTULLFdX2r5L~1oYbkfr66ueto3vHdvE9fvyFM0b7ilBrup5pxjsl6vTIh8p96~GZFBXknCE3jcpEFU-d0SYWZjLHLK9eFVDH57EohnMEZJWij52Y~nVdht9qryCQ9tYMs3n46HyR4cbLhw__',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 1068,
            width: 433,
            height: 500,
            top: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Potted cacti",
                    style: GoogleFonts.workSans(
                      fontSize: 81,
                      height: 100 / 81,
                      letterSpacing: 18.98,
                      color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.muktaVaani(
                    fontSize: 24,
                    height: 35 / 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          Positioned(
            left: 1554,
            right: 294,
            top: 358,
            child: Container(
              child: Text(
                ">",
                style: TextStyle(
                  fontSize: 81,
                  height: 66.19 / 81,
                  letterSpacing: 18.9844,
                  color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Positioned(
            left: 1560,
            top: 965,
            child: Container(width: 64, height: 3, color: Color(0xFF979797)),
          ),
          Positioned(
            left: 1612,
            top: 965 - 21,
            width: 15.02,
            height: 31.08,
            child: Container(
              child: Text(
                '>',
                style: TextStyle(fontSize: 30, color: Color(0xFF979797)),
              ),
            ),),
          Positioned(
            left: 1193,
            top: 644,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                width: 306.76,
                height: 2,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            left: 1067,
            top: 644,
            child: Container(width: 126.24, height: 6, color: Colors.white),
          ),
          Positioned(
            left: 1070,
            top: 917,
            width: 431,
            height: 91,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF979797), width: 3),
              ),
              child: Center(
                child: Text(
                  "VIEW GALLERY",
                  style: TextStyle(
                    fontFamily: 'Koulen',
                    fontSize: 36,
                    height: 65.04 / 36,
                    letterSpacing: 8,
                    color: Color(0xFF7A797A)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 240,
            child: Column(
              children: [
                SvgPicture.network(
                  'https://www.svgrepo.com/show/520798/instagram.svg',
                  width: 16,
                  height: 16,
                ),
                SizedBox(height: 15),
                SvgPicture.network(
                  'https://www.svgrepo.com/show/506656/facebook.svg',
                  width: 16,
                  height: 16,
                ),
                SizedBox(height: 15),
                SvgPicture.network(
                  'https://www.svgrepo.com/show/521900/twitter.svg',
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Rectangle3 extends StatefulWidget {
  @override
  _Rectangle3State createState() => _Rectangle3State();
}

class _Rectangle3State extends State<Rectangle3> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller);
  }

  void _toggleAnimation() {
    if (_controller.isAnimating) {
      _controller.stop();
    } else {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double blockWidth = 1920;
    final double blockHeight = 1200;

    return SizedBox(
      width: blockWidth,
      height: blockHeight,
      child: Stack(
        children: [
          Container(color: Colors.white),
          Positioned(
            left: 507,
            top: 217.7,
            width: 380,
            height: 419,
            child: GestureDetector(
              onTap: _toggleAnimation,
              child: ScaleTransition(
                scale: _animation,
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/74dc/d949/32aa96abacebad4218ab080c2fac5521?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=GFwYZEbVQtDm-J2t5FpIYvfXJpQMj-KVEo4vxZyyAIS~9mf4ZolILFoCULzsNbXHZ~JI1FxvPX5va7NLCMG4PXoaVFQJ2HFhn14YX-3waerWoCMlLW8QnPvEkIjhORbd3FeYAaXCw~-~3r2T7iIuGKDiqt9EklUTOHaZAGme~U5E4iLdwHmSgvXr7IrPLttbMQe9p-UZjrw57dLeEAnLIy~BOGKFxyoPA0Nad2AyZo3IUT6UnCwTcyX7cnA9YwRMxn5l~MedTY5NiOYDlKGjqKCNswelxIZ4KFYo~qAfQUGKYbZZWaUZTrUvi0RJKEjGBGypczx4jCApszcA5QiRxg__',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 897,
            top: 217.7,
            width: 572,
            height: 420,
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/8921/6ffd/0bb22b5a597df65d4e5163e1943524e1?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=HqLUp0vpd3JBhaF38TH1MTJ6BiCoGH2o3cD8DOwbdaOWou6WVOq9wxJH3IjTosMc9q~b6KIYhsX2JN8o34Mcww-s0lYadEq4IaNFZQszzQBNtRSQjzamebnZz1kNjfBG~PqoifDO4226rHCZXr5zuqPPU6tEM1DId4tfu4T8qPPUtkRenavwRhgsb88rg1pIpJtjrHak75cal8Out-mNlc9oaC~5ADf6wn60hMKUaG8HomnFmY75sPx4josLUly7qFCBqIpeE1Jxiox2JxNCHfYYq2ZE1VPmuoY6x9g6Lx~MqJaTcHZc6nWi6UX1tWsPSgSUz~-TwF208iUiAPfDPQ__',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 107,
            top: 935,
            width: 303.5,
            height: 425.5,
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/4413/f958/50d6a05051e275b789dc8ec1fad4b221?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Y6mAD-~xYCR~k02VcRgoFDpjIRUdjAGLa9DbysIWQG~pnG4Q9nb8RtYGoCBL9H6kCAYSnvcbU98Qld9oLSy8pvldLto7YwnDtfRsUzHxdRfoaghe~l6UB~qHItShHDFTRuJtPcbNx7hXAuQoNY6Y5X2IJvy5kbaiSF7j~9Ug4E-bXdwbgMtdUYmb-KGJy5KeRRutA~mGytMh4SFaqajz-1KhYmK8LTI-gCSF495MrK1M-sDN2TC7lPiWlmq2agRBrHwJaNltfkqVBjppsscNfflZtJBczcVKUeMr1Yi3~PXuS7TzkEfJblYLOeUpMgzr6tHgy1WXVIQMAObcYbIloQ__',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 525,
            top: 660.07,
            width: 320,
            height: 175,
            child: Container(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                textAlign: TextAlign.center,
                style: GoogleFonts.muktaVaani(
                  fontSize: 24,
                  color: Color(0xFF4A4A4A)),
                ),
              ),
            ),
          Positioned(
            left: 977,
            top: 660.07,
            width: 411,
            height: 105,
            child: Container(
              child: Text(
                'Venim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.muktaVaani(
                  fontSize: 24,
                  color: Color(0xFF4A4A4A),
                ),
              ),
            ),
          ),
          Positioned(
            left: 450,
            top: 265,
            width: 33,
            height: 550,
            child: Container(
              child: Text(
                'VASES & POTS ',
                style: GoogleFonts.roboto(
                  fontSize: 38,
                  color: Color(0xFF7A797A)),
                ),
              ),
            ),
          Positioned(
            left: 1402,
            top: 1001,
            child: Container(width: 64, height: 3, color: Color(0xFF979797)),),
          Positioned(
            left: 1454,
            top: 980,
            width: 15.02,
            height: 31.08,
            child: Container(
              child: Text(
                '>',
                style: TextStyle(fontSize: 30, color: Color(0xFF979797)),
              ),
            ),),
          Positioned(
            left: 912,
            top: 960,
            width: 431,
            height: 91,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF979797), width: 3),
              ),
              child: Center(
                child: Text(
                  "VIEW GALLERY",
                  style: GoogleFonts.koulen(
                    fontSize: 36,
                    height: 65 / 36,
                    letterSpacing: 8,
                    color: Color(0xFF7A797A),
                ),
              ),
            ),
          ),),
          Positioned(
            bottom: 40,
            left:0,
            right:0,
            child:Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Кнопка на вторую страницу'),
            ),),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  final _fioController = TextEditingController();
  final _cityController = TextEditingController();
  final _descriptionController = TextEditingController();
  List<Map<String, String>> _dataList = [];

  void _saveData() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _dataList.add({
          'ФИО': _fioController.text,
          'Город': _cityController.text,
          'Описание': _descriptionController.text,
        });
        _fioController.clear();
        _cityController.clear();
        _descriptionController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Вторая страница')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _fioController,
                    decoration: InputDecoration(labelText: 'ФИО'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите ФИО';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _cityController,
                    decoration: InputDecoration(labelText: 'Город'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите город';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(labelText: 'Описание'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите описание';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _saveData,
                    child: Text('Сохранить'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _dataList.length,
                itemBuilder: (context, index) {
                  final data = _dataList[index];
                  return ListTile(
                    title: Text('ФИО: ${data['ФИО']}'),
                    subtitle: Text('Город: ${data['Город']}\nОписание: ${data['Описание']}'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Кнопка возврата назад'),
            ),
          ],
        ),
      ),
    );
  }
}