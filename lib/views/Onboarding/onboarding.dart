import 'package:flutter/material.dart';

class Onbarding extends StatefulWidget {
  const Onbarding({Key? key}) : super(key: key);

  @override
  State<Onbarding> createState() => _OnbardingState();
}

class _OnbardingState extends State<Onbarding> {
  final PageController controller = PageController(
    initialPage: 0,
  );

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff000000),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .65,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              controller: controller,
              onPageChanged: (indx) => setState(() {
                current = indx;
              }),
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Placeholder(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Presereve Memories",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("kyaaa kar rahe hoo")
                  ],
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Placeholder(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Presereve Memories",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("hal chaal theek hai?")
                  ],
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Placeholder(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Presereve Memories",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("isko complete kardo pls")
                  ],
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Placeholder(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Presereve Memories",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("you are not doing it XD")
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () => controller.animateToPage(
                  current += 1,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.easeIn,
                ),
                child: Container(
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff5E5CE5),
                  ),
                ),
              ),
            ),
          ),
          currentIndex(context)
        ],
      ),
    );
  }

  Padding currentIndex(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 60,
        right: 60,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width - 120) * .2,
            decoration: BoxDecoration(
              color: (current == 0) ? Colors.white : Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            height: 3,
          ),
          Container(
            decoration: BoxDecoration(
              color: (current == 1) ? Colors.white : Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: (MediaQuery.of(context).size.width - 120) * .2,
            height: 3,
          ),
          Container(
            decoration: BoxDecoration(
              color: (current == 2) ? Colors.white : Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: (MediaQuery.of(context).size.width - 120) * .2,
            height: 3,
          ),
          Container(
            decoration: BoxDecoration(
              color: (current == 3) ? Colors.white : Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: (MediaQuery.of(context).size.width - 120) * .2,
            height: 3,
          ),
        ],
      ),
    );
  }
}
