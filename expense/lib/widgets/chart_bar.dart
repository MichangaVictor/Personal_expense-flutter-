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
    return LayoutBuilder(
      builder: (ctx, constraint) {
        return Column(
          children: [
            Container(
              height: constraint.maxHeight * 0.10,
              child: FittedBox(
                child: Text('KES ${spendingAmount.toStringAsFixed(0)}'),
              ),
            ),
            SizedBox(
              height: constraint.maxHeight * 0.05,
            ),
            Container(
              height: constraint.maxHeight * 0.65,
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
            SizedBox(
              height: constraint.maxHeight * 0.03,
            ),
            Container(
                height: constraint.maxHeight * 0.065,
                child: FittedBox(child: Text(day))),
          ],
        );
      },
    );
  }
}
