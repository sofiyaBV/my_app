import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    const double radius = 20;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF42E695),
          Color(0xFF3BB2B8),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius)),
              elevation: 50,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(radius),
                            topRight: Radius.circular(radius)),
                        child: Image.asset(
                          'assets/img/my_photo.jpg',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.5,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Sofia",
                        style: GoogleFonts.satisfy(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.green.shade900)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        "Я София,Софа,Софикс \nи вообще топ girl)\n 11 августа у меня день рождения,\nя лев и поэтому \nменя считают прерождённым лидером",
                        style: GoogleFonts.montserratAlternates(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.green.shade900)),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text("Способы связи"),
                                content: const Text("Номер телефона :\n\t\t0739870397\n\t\t+380961892820\ninstagram :\n\t\t@77_sonka.leniviy.lemur_77\n\t\t@qlojim\n telegram : \n\t\t@IalaLalaIa",),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text("OK"))
                                ],
                              )),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: const Color(0xFF42E695),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius),
                        ),
                        fixedSize: const Size(200, 40),
                        minimumSize: const Size(150, 40),
                      ),
                      child: Text("Связь",
                          style: GoogleFonts.montserratAlternates(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.green.shade900)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
