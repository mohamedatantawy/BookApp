import 'package:flutter/material.dart';

class BestsellerlistviewitemLoadingEducator extends StatelessWidget {
  const BestsellerlistviewitemLoadingEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Container(
                        height: 40,
                        color: Colors.grey[50],
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey[50],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.grey[50],
                        ),
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.grey[50],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
