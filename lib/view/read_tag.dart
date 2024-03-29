import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_app_prototype/models/record.dart';


class ReadTagView extends StatefulWidget {
  const ReadTagView({super.key});

  @override
  State<StatefulWidget> createState() => ReadTagState();
}

class ReadTagState extends State<ReadTagView> {

  String _status = "IDLE";
  String _identifier = "UNKNOWN"; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("R E A D   T A G"), centerTitle: true,),
      body: Center(
        child: Flex(
        direction: Axis.vertical,
        children: [
          Text('NFC STATUS ${_status}'),
          const Text("e-Clothing Identifier: "),
          Text(_identifier),
          ElevatedButton(onPressed: _tagRead, child: Text('Tag Read')),
        ],
      ),
      )
    );
  }


  void _tagRead() {
    setState(() {
      _status = "SCANNING";
    }); 
    NfcManager.instance.startSession(
      onDiscovered: (NfcTag tag) async {

        String idFound = "UNKNOWN";

        Ndef ? data = Ndef.from(tag);
        if (data is Ndef) {
          final cachedMessage = data.cachedMessage;
          if (cachedMessage != null){
            final record = Record.fromNdef(cachedMessage.records[0]);
            if (record is WellknownTextRecord) {
              idFound = record.text;
            }
          }
        }
      
        setState(() {
          _identifier = idFound;
        });
        await NfcManager.instance.stopSession();
        setState(() {
          _status = "GOT TAG";
        }); 
    });
  }

}