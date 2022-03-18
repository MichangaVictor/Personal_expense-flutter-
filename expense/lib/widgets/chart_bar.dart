import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String day;
  final double spendingAmount;
  final double spendingPctOfTotal;

  const ChartBar(this.day, this.spendingAmount, this.spendingPctOfTotal,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
          child: FittedBox(
            child: Text('KES ${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1.0),
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(day),
      ],
    );
  }
}
