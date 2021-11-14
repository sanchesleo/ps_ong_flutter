import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ScreenReportTypeLoading extends StatelessWidget {
  const ScreenReportTypeLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 202, 132, 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
              ),
              const SizedBox(
                height: 15,
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
                child: Container(
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
                child: Container(
                  width: 80,
                  height: 25,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 202, 132, 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
              ),
              const SizedBox(
                height: 15,
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
                child: Container(
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromRGBO(110, 92, 60, 1),
                highlightColor: const Color.fromRGBO(240, 202, 132, 1),
                child: Container(
                  width: 80,
                  height: 25,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(110, 92, 60, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
