import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('$contador', style: TextStyle(fontSize: 80, fontWeight: FontWeight.w200, color: Colors.indigoAccent),),
       Text('clicks${contador == 1 ? '' : 's'}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
        ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         CostumButton(onPressed: (){
          setState(() {
            contador++;
          });
         },
         icono: Icons.plus_one_outlined,
         ),
         FloatingActionButton(
            shape: StadiumBorder(),
          onPressed: (){
            setState(() {
              if(contador == 0) return;
                 contador--;
              });
          },
      
          child: Icon(Icons.exposure_minus_1),
    ),
     FloatingActionButton(
            shape: StadiumBorder(),
          onPressed: (){
            setState(() {
            contador == 0;
                 
              });
          },
      
          child: Icon(Icons.refresh),
    ),

        ],
      ),
    );
    
  }
}
class CostumButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed; // el signo es que es opcional ?
  const CostumButton({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape : const StadiumBorder(),
      onPressed: onPressed ,
      child: Icon(icono),
    );
  }
}
 
