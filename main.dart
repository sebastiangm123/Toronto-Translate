import 'package:flutter/material.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
var rng = new Random();
void main() => runApp(new TDotTranslate());
class TDotTranslate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   // SizeConfig().init(context);
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "T-Dot Translator",
        home: HomePage(),
    );
  }
}
    /*String engTo6() {
      return "3";
    }*/
    Map<int, String> dictEng = {
      1: 'hello',
      2: 'bye',
      3: 'sounds good',
  4: 'toronto',
  5: 'show off',
  6:'stupid',
  7:'buy',
  8:'bought',
  9:'stud',
  10: 'I will',
  11: 'dude',
  12: 'idiot',
  13:'be quiet',
  15: 'girl',
  16: 'thing',
  17: 'yes',
  18: 'upset',
  19:'angry',
  20: 'come to',
  21: 'bad',
  22: 'bum',
  23: 'slut',
  24: 'allow it',
  25: 'thank you',
  26: 'on drugs',
  27: 'good',
  28: 'a lot',
  29: 'loser',
  30: 'ugly',
  31: 'bro',
  32: 'hi',
  33: 'great',
  34: 'obviously',
  35: 'hungry',
  36:'gay',
  37: 'shut up',
  38: 'gal',
  39: 'woman',
  40: 'notice',
  41: 'relax',
  42: 'shoutout',
  43: 'the guys',
  44: 'the girls',
  45: 'dirty',
  46: 'sexy girl',
  47: 'alone',
  48: 'beating',
  49: 'rough sex',
  50: 'for real',
  51: 'sometimes',
  52: 'boy',
  53: 'loser',
  54: 'on God',
  55: 'being loud',
  56: 'enemy',
  57: 'enemies',
  58: 'wrong',
  59: 'meeting',
  60: 'moving',
  61: 'going to',
  62: 'ugly',
  63: 'you agree',
  64: 'lets go',
  65: 'far',
  66: 'high',
  67: 'come over',
  68: 'joint',
  69: 'high',
  70: 'alcohol',
  71: 'marijuana',
  72: 'too high',
  73: 'dudes',
      74: 'you okay',
  75: 'sexy',
      76 :'slutty',
      77: 'have sex',
      78: 'pass',
      79: 'house',
      80: 'assault',
      81:'guys',
      82: 'sex',
      83: 'money',
      84:'zxyvqrz'
    };



  Map<int, String> dict6 = {
    1: 'wagwan',
    2: 'dunno',
    3: 'say less',
    4: 'the 6',
    5: 'flex',
  6:'are you dumb',
  7:'cop',
  8:'copped',
  9:'sweeterman',
  10: 'finna',
  11: 'fam',
  12: 'bean',
  13:'nize dat',
  15: 'ting',
  16: 'ting',
  17: 'nyeahh eh',
  18: 'cheesed',
  19:'vexxed',
  20: 'reach',
  21: 'waste',
  22: 'bucktee',
  23: 'cyattie',
  24: 'lowe it',
  25: 'bless up',
  26: 'blessed',
  27: 'blessed',
  28: 'bare',
  29: 'wasteman',
  30: 'beat',
  31: 'my guy',
  32: 'yo',
  33: 'lit',
  34: 'Two-Two\'s',
  35: 'marved',
  36:'sus',
  37: 'nize',
  38: 'shorty',
  39: 'shawty',
  40: 'pre',
  41: 'say no more',
  42: 'big up',
  43: 'mandem',
  44: 'gyaldem',
  45: 'scarborough',
  46: 'pengting',
  47: 'on the ones',
  48: 'deafaz',
  49: 'battri',
  50: 'styll',
  51: 'dem ones',
  52: 'yute',
  53: 'wasteyute',
  54: 'wallahi',
  55: 'beaking',
  56: 'opp',
  57: 'opps',
  58: 'neck',
  59: 'linking',
  60: 'flying',
  61: 'reaching',
  62: 'merked',
  63: 'ahlie',
  64: 'run it',
  65: 'deep',
  66: 'blem',
  67: 'slide',
  68: 'spliff',
  69: 'chopped',
  70: 'liqs',
  71: 'kush',
  72: 'geekin',
    73: 'mandem',
 74: 'you blessed?',
    75: 'peng',
    76: 'a battriting',
    77: 'smash',
    78: 'swing',
    79:'place',
    80: 'jump',
    81:'yutes',
    82: 'pt',
    83: 'guap',
    84:'zxyvqrz'
};

class MainForm extends StatefulWidget {
  @override
  MainFormState createState() {
    return MainFormState();
  }
}
List<String> breakDown(String s){
  return s.split(" ");
}
String putBack(List<String> s5) {
  String s6 = s5[0];
  for (int i = 1; i <= s5.length - 1; i++) {
    if(s5[i]!=''){
    s6 = s6 + ' ' + s5[i];
    }
  }
  return s6;
}
String transEngTo6(String s3){
if( s3.isNotEmpty){
  int index= 0;
double best=0;
  for (var i =1;i <= dictEng.length;i++){
    if (percentCheck(s3,dictEng[i])>= best && percentCheck(s3,dictEng[i]) >= pass){
      index = i;
      best = percentCheck(s3,dictEng[i]);
    }
  }
  if (index!=0) {
    return dict6[index];
  }else{
    return "";
  }
}else{
  return "";
}
}
String match6toEng(String s){
  for (int i =1;i<=dict6.length;i++){
    if(s == dict6[i]){
      return dictEng[i];
    }
  }
  return "";
}
String trans6ToEng(String s3){
  if( s3.isNotEmpty){
    int index= 0;
    double best=0;
    for (var i =1;i <= dictEng.length;i++){
      if (percentCheck(s3,dict6[i])>= best && percentCheck(s3,dict6[i]) >= passTo){
        index = i;
        best = percentCheck(s3,dict6[i]);
      }
    }
    if (index!=0) {
      return dictEng[index];
    }else{
      return "";
    }
  }else{
    return "";
  }
}
String matchEngto6(String s){
  for (int i =1;i<=dict6.length;i++){
    if(s == dictEng[i]){
      return dict6[i];
    }
  }
  return "";
}
int min(int n1, int n2){
  if(n1>=n2){
    return n2;
  }else{
    return n1;
  }
}
int max(int n1, int n2){
  if(n1>=n2){
    return n1;
  }else{
    return n2;
  }
}
bool newContains(List<String> a1,String s1){
  for(int i=0;i<= a1.length-1;i++){
    if(a1[i]==s1){
      return true;
    }
  }
  return false;
}
double percentCheck(String s1, String s2){

  if (s1==s2){
    return 1;
}else{
  if(s1 != null && s2 != null){
    if( s1.substring(0,max(min(s1.length,s2.length)-1,0) )==s2 || s2.substring(0,max(min(s1.length,s2.length)-1,0)) ==s1){
      if(s1.length<s2.length){
        return s1.length/s2.length;
      }else{
        return s2.length/s1.length;
      }
    }else{
      int goodChars =0;
      if (s1.length>= s2.length) {
        for (int i = 0; i <= s2.length - 1; i++) {
          if (s1[i] == s2[i]) {
            goodChars++;
          }
        }
      }else {
        for (int i = 0; i <= s1.length - 1; i++) {
          if (s1[i] == s2[i]) {
            goodChars++;
          }
        }
      }

      return (goodChars/s1.length + goodChars/s2.length)/2;
    }}else{
    return 0;

  }
}
}

final myController = TextEditingController();

class MainFormState extends State<MainForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: myController,
            decoration: new InputDecoration(
            labelText: "Enter text for translation",
           fillColor: Colors.white,
           border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(
          ),
        ),
        //fillColor: Colors.green
      ),

      keyboardType: TextInputType.text,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    ),


          /*DropdownButton(
              value: selected,
              hint: new Text('Select Translation'),

             )*/

          /*Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child:
              RaisedButton(
              onPressed: () {
                SnackBar(
                  content: Text('Translation Copied to Clipboard'),
                );
                //showAlertDialog(context);

              },
              child: Text('Copy'),
            ),

          ),
          */

        //  SnackBarPage(),
          Row(
              children: <Widget>[

            Padding(
              padding: EdgeInsets.fromLTRB((width-236.0)/3,10.0,(width-236.0)/12,0.0),
              child:RaisedButton(

                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {

// If the form is valid, display a Snackbar.
                    List<String> s7= breakDown(myController.text.toLowerCase());
                    if(trans){

                      if (s7.length>=3) {
                        for (int i = 0; i <= s7.length - 3; i++) {
                          double p1 = percentCheck(match6toEng(transEngTo6(s7[i])), s7[i]);
                          double p2 = percentCheck(match6toEng(transEngTo6(s7[i] + ' '+s7[i + 1])),
                              s7[i] +' '+ s7[i + 1]);
                          double p3 = percentCheck(match6toEng(transEngTo6(s7[i + 1] +' '+
                              s7[i + 2])), s7[i + 1] +' '+ s7[i + 2]);
                          double p7 = percentCheck(match6toEng(transEngTo6(s7[i+1])), s7[i+1]);
                          if (p1 > p2 && p1 > p3 &&p1>=p7 &&p1>=pass) {
                            if(transEngTo6(s7[i])!=''||transEngTo6(s7[i])!=null ) {
                              s7[i] = transEngTo6(s7[i]);
                              if(s7.length<=4 &&p7>=pass){
                                s7[i+1] = transEngTo6(s7[i+1]);
                              }
                            }
                          } else if (p2 >= p1 && p2>p7&&p2 > p3&& p2>=pass) {
                            if(transEngTo6(s7[i] +' '+ s7[i + 1])!=''||transEngTo6(s7[i] +' '+ s7[i + 1])!=null) {
                              s7[i] = transEngTo6(s7[i] + ' '+ s7[i + 1]);
                              s7[i + 1] = "";
                            }
                            i++;
                          } else if (p3 >= p1 && p3>p7&& p3 >= p2&& p3>=pass) {
                            if(transEngTo6(s7[i + 1] +' '+ s7[i + 2])!=''||transEngTo6(s7[i + 1] +' '+ s7[i + 2])!=null) {
                              s7[i + 1] = transEngTo6(s7[i + 1] +' '+ s7[i + 2]);
                              s7[i + 2] = "";
                            }
                            i += 2;
                          }else if (p7>=p1&&p7>=p2&&p7>=p3 && p7>=pass){
                            if(transEngTo6(s7[i+1])!=''||transEngTo6(s7[i+1])!=null){
                              s7[i+1] = transEngTo6(s7[i+1]);
                            }
                            i++;
                          }
                        }
                      }
                      if(s7.length>=2) {
                        double p4 = percentCheck(
                            match6toEng(transEngTo6(s7[s7.length - 2])), s7[s7.length - 2]);
                        double p5 = percentCheck(match6toEng(transEngTo6(s7[s7.length - 2] +' '+
                            s7[s7.length - 1])),
                            s7[s7.length - 2] + ' '+s7[s7.length - 1]);
                        double p6 = percentCheck(
                            match6toEng(transEngTo6(s7[s7.length - 1])), s7[s7.length - 1]);
                        if (p4 > p5 && p4 >= p6&&p4>=pass) {
                          if(transEngTo6(s7[s7.length - 2])!=''||transEngTo6(s7[s7.length - 2])!=null) {
                            s7[s7.length - 2] = transEngTo6(s7[s7.length - 2]);
                            if(p6>=pass) {
                              s7[s7.length - 1] = transEngTo6(s7[s7.length - 1]);
                            }

                          }

                        } else if (p5 >= p4 && p5 >= p6&&p5>=pass) {
                          if(transEngTo6(s7[s7.length - 2] +' '+
                              s7[s7.length - 1])!=''||transEngTo6(s7[s7.length - 2] +' '+
                              s7[s7.length - 1])!=null) {
                            s7[s7.length - 2] = transEngTo6(s7[s7.length - 2] +' '+
                                s7[s7.length - 1]);
                            s7[s7.length - 1] = "";
                          }
                        } else if (p6 >= p4 && p6 >= p5&&p6>=pass) {
                          if(transEngTo6(s7[s7.length - 1])!=''||transEngTo6(s7[s7.length - 1])!=null) {
                            s7[s7.length - 1] = transEngTo6(s7[s7.length - 1]);
                          }
                        }
                      }else{
                        if(percentCheck(match6toEng(transEngTo6(s7[s7.length-1])), s7[s7.length-1])>=pass)
                          s7[s7.length-1]= transEngTo6(s7[s7.length-1]);
                      }
                      setState(() {

                        result =putBack(giveAz(giveStill(s7)));
                      });
                    }else{
                  //    s7 = deStill(deAz(s7));
                      if (s7.length>=3) {
                        for (int i = 0; i <= s7.length - 3; i++) {
                          double p1 = percentCheck(matchEngto6(trans6ToEng(s7[i])), s7[i]);
                          double p2 = percentCheck(matchEngto6(trans6ToEng(s7[i] + ' '+s7[i + 1])),
                              s7[i] +' '+ s7[i + 1]);
                          double p3 = percentCheck(matchEngto6(trans6ToEng(s7[i + 1] +' '+
                              s7[i + 2])), s7[i + 1] +' '+ s7[i + 2]);
                          double p7 = percentCheck(matchEngto6(trans6ToEng(s7[i+1])), s7[i+1]);
                          if (p1 > p2 && p1 > p3 &&p1>=p7 &&p1>=passTo) {
                            if(trans6ToEng(s7[i])!=''||trans6ToEng(s7[i])!=null ) {
                              s7[i] = trans6ToEng(s7[i]);
                              if(s7.length<=4 &&p7>=passTo){
                                s7[i+1] = trans6ToEng(s7[i+1]);
                              }
                            }
                          } else if (p2 >= p1 && p2>p7&&p2 > p3&& p2>=passTo) {
                            if(trans6ToEng(s7[i] +' '+ s7[i + 1])!=''|| trans6ToEng(s7[i] +' '+ s7[i + 1])!=null) {
                              s7[i] = trans6ToEng(s7[i] + ' '+ s7[i + 1]);
                              s7[i + 1] = "";
                            }
                            i++;
                          } else if (p3 >= p1 && p3>p7&& p3 >= p2&& p3>=passTo) {
                            if(trans6ToEng(s7[i + 1] +' '+ s7[i + 2])!=''||trans6ToEng(s7[i + 1] +' '+ s7[i + 2])!=null) {
                              s7[i + 1] = trans6ToEng(s7[i + 1] +' '+ s7[i + 2]);
                              s7[i + 2] = "";
                            }
                            i += 2;
                          }else if (p7>=p1&&p7>=p2&&p7>=p3 && p7>=passTo){
                            if(trans6ToEng(s7[i+1])!=''||trans6ToEng(s7[i+1])!=null){
                              s7[i+1] = trans6ToEng(s7[i+1]);
                            }
                            i++;
                          }
                        }
                      }
                      if(s7.length>=2) {
                        double p4 = percentCheck(
                            matchEngto6(trans6ToEng(s7[s7.length - 2])), s7[s7.length - 2]);
                        double p5 = percentCheck(matchEngto6(trans6ToEng(s7[s7.length - 2] +' '+
                            s7[s7.length - 1])),
                            s7[s7.length - 2] + ' '+s7[s7.length - 1]);
                        double p6 = percentCheck(
                            matchEngto6(trans6ToEng(s7[s7.length - 1])), s7[s7.length - 1]);
                        if (p4 > p5 && p4 >= p6&&p4>=passTo) {
                          if(trans6ToEng(s7[s7.length - 2])!=''||trans6ToEng(s7[s7.length - 2])!=null) {
                            s7[s7.length - 2] = trans6ToEng(s7[s7.length - 2]);
                            if(p6>=passTo) {
                              s7[s7.length - 1] = trans6ToEng(s7[s7.length - 1]);
                            }

                          }

                        } else if (p5 >= p4 && p5 >= p6&&p5>=passTo) {
                          if(trans6ToEng(s7[s7.length - 2] +' '+
                              s7[s7.length - 1])!=''||trans6ToEng(s7[s7.length - 2] +' '+
                              s7[s7.length - 1])!=null) {
                            s7[s7.length - 2] = trans6ToEng(s7[s7.length - 2] +' '+
                                s7[s7.length - 1]);
                            s7[s7.length - 1] = "";
                          }
                        } else if (p6 >= p4 && p6 >= p5&&p6>=passTo) {
                          if(trans6ToEng(s7[s7.length - 1])!=''||trans6ToEng(s7[s7.length - 1])!=null) {
                            s7[s7.length - 1] = trans6ToEng(s7[s7.length - 1]);
                          }
                        }
                      }else{
                        if(percentCheck(matchEngto6(trans6ToEng(s7[s7.length-1])), s7[s7.length-1])>=passTo)
                          s7[s7.length-1]= trans6ToEng(s7[s7.length-1]);
                      }
                      setState(() {

                        result =putBack(s7) ;
                      });
                    }
                    ogText = myController.text;
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    myController.clear();
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Translation Complete')));
                  }
                },
                child: Text('Translate'),
              ),
            ),
                Padding(
                    padding: EdgeInsets.fromLTRB((width-236.0)/12,10.0,(width-236.0)/3,0.0),
                  child:  SnackBarCopyButton(),
                )


          ]
          ),
        ]
          ,

       )
    ),
     ) ;
  }
}
//test
class DropDownWidget extends StatefulWidget {
  DropDownWidget({Key key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = 'English to Toronto';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          if (dropdownValue =='Toronto to English'){
            trans = false;
          }else{
            trans = true;
          }
        });
      },
      items: <String>['English to Toronto', 'Toronto to English']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

bool trans = true;
String result ='';
double pass =0.85;
double passTo = 0.65;


class SnackBarCopyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //alignment: Alignment.centerLeft,
      child: RaisedButton(
       // shape: RoundedRectangleBorder(
        //  borderRadius: BorderRadius.circular(0.0),
         // side
      //  ),
        ////constraints: ,
        //fillColor: Color(7),
       // elevation: 2,
        onPressed: () {

          //Clipboard.setData(ClipboardData(text: quote));
          final snackBar = SnackBar(
            content: Text('Translation Copied To Clipboard'),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
          ClipboardManager.copyToClipBoard(result);
          },

        child: Text('Copy'),
     )
      );

  }
}
class TransButtonWidget extends StatefulWidget {
  TransButtonWidget({Key key}) : super(key: key);

  @override
  _TransButtonWidgetState createState() => _TransButtonWidgetState();
}

class _TransButtonWidgetState extends State<TransButtonWidget>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
// Validate returns true if the form is valid, or false
// otherwise.

        },
        child: Text('Translate'),
      ),
    );
  }
}
/*
class transButtonWidget extends StatefulWidget {
  transButtonWidget({Key key}) : super(key: key);

  @override
  _transButtonState createState() => _transButtonState();
}

class _transButtonState extends State<transButtonWidget> (){

@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.symmetric(vertical: 16.0),
child: RaisedButton(
onPressed: () {
// Validate returns true if the form is valid, or false
// otherwise.
if (_formKey.currentState.validate()) {
// If the form is valid, display a Snackbar.
List<String> s7= breakDown(myController.text.toLowerCase());
if(trans){

if (s7.length>=3) {
for (int i = 0; i <= s7.length - 3; i++) {
double p1 = percentCheck(match6toEng(transEngTo6(s7[i])), s7[i]);
double p2 = percentCheck(match6toEng(transEngTo6(s7[i] + ' '+s7[i + 1])),
s7[i] +' '+ s7[i + 1]);
double p3 = percentCheck(match6toEng(transEngTo6(s7[i + 1] +' '+
s7[i + 2])), s7[i + 1] +' '+ s7[i + 2]);
double p7 = percentCheck(match6toEng(transEngTo6(s7[i+1])), s7[i+1]);
if (p1 > p2 && p1 > p3 &&p1>=p7 &&p1>=pass) {
if(transEngTo6(s7[i])!=''||transEngTo6(s7[i])!=null ) {
s7[i] = transEngTo6(s7[i]);
if(s7.length<=4 &&p7>=pass){
s7[i+1] = transEngTo6(s7[i+1]);
}
}
} else if (p2 >= p1 && p2>p7&&p2 > p3&& p2>=pass) {
if(transEngTo6(s7[i] +' '+ s7[i + 1])!=''||transEngTo6(s7[i] +' '+ s7[i + 1])!=null) {
s7[i] = transEngTo6(s7[i] + ' '+ s7[i + 1]);
s7[i + 1] = "";
}
i++;
} else if (p3 >= p1 && p3>p7&& p3 >= p2&& p3>=pass) {
if(transEngTo6(s7[i + 1] +' '+ s7[i + 2])!=''||transEngTo6(s7[i + 1] +' '+ s7[i + 2])!=null) {
s7[i + 1] = transEngTo6(s7[i + 1] +' '+ s7[i + 2]);
s7[i + 2] = "";
}
i += 2;
}else if (p7>=p1&&p7>=p2&&p7>=p3 && p7>=pass){
if(transEngTo6(s7[i+1])!=''||transEngTo6(s7[i+1])!=null){
s7[i+1] = transEngTo6(s7[i+1]);
}
i++;
}
}
}
if(s7.length>=2) {
double p4 = percentCheck(
match6toEng(transEngTo6(s7[s7.length - 2])), s7[s7.length - 2]);
double p5 = percentCheck(match6toEng(transEngTo6(s7[s7.length - 2] +' '+
s7[s7.length - 1])),
s7[s7.length - 2] + ' '+s7[s7.length - 1]);
double p6 = percentCheck(
match6toEng(transEngTo6(s7[s7.length - 1])), s7[s7.length - 1]);
if (p4 > p5 && p4 >= p6&&p4>=pass) {
if(transEngTo6(s7[s7.length - 2])!=''||transEngTo6(s7[s7.length - 2])!=null) {
s7[s7.length - 2] = transEngTo6(s7[s7.length - 2]);
if(p6>=pass) {
s7[s7.length - 1] = transEngTo6(s7[s7.length - 1]);
}

}

} else if (p5 >= p4 && p5 >= p6&&p5>=pass) {
if(transEngTo6(s7[s7.length - 2] +' '+
s7[s7.length - 1])!=''||transEngTo6(s7[s7.length - 2] +' '+
s7[s7.length - 1])!=null) {
s7[s7.length - 2] = transEngTo6(s7[s7.length - 2] +' '+
s7[s7.length - 1]);
s7[s7.length - 1] = "";
}
} else if (p6 >= p4 && p6 >= p5&&p6>=pass) {
if(transEngTo6(s7[s7.length - 1])!=''||transEngTo6(s7[s7.length - 1])!=null) {
s7[s7.length - 1] = transEngTo6(s7[s7.length - 1]);
}
}
}else{
if(percentCheck(match6toEng(transEngTo6(s7[s7.length-1])), s7[s7.length-1])>=pass)
s7[s7.length-1]= transEngTo6(s7[s7.length-1]);
}
//setState(() {

result =putBack(s7);
// });
}else{
if (s7.length>=3) {
for (int i = 0; i <= s7.length - 3; i++) {
double p1 = percentCheck(matchEngto6(trans6ToEng(s7[i])), s7[i]);
double p2 = percentCheck(matchEngto6(trans6ToEng(s7[i] + ' '+s7[i + 1])),
s7[i] +' '+ s7[i + 1]);
double p3 = percentCheck(matchEngto6(trans6ToEng(s7[i + 1] +' '+
s7[i + 2])), s7[i + 1] +' '+ s7[i + 2]);
double p7 = percentCheck(matchEngto6(trans6ToEng(s7[i+1])), s7[i+1]);
if (p1 > p2 && p1 > p3 &&p1>=p7 &&p1>=passTo) {
if(trans6ToEng(s7[i])!=''||trans6ToEng(s7[i])!=null ) {
s7[i] = trans6ToEng(s7[i]);
if(s7.length<=4 &&p7>=passTo){
s7[i+1] = trans6ToEng(s7[i+1]);
}
}
} else if (p2 >= p1 && p2>p7&&p2 > p3&& p2>=passTo) {
if(trans6ToEng(s7[i] +' '+ s7[i + 1])!=''|| trans6ToEng(s7[i] +' '+ s7[i + 1])!=null) {
s7[i] = trans6ToEng(s7[i] + ' '+ s7[i + 1]);
s7[i + 1] = "";
}
i++;
} else if (p3 >= p1 && p3>p7&& p3 >= p2&& p3>=passTo) {
if(trans6ToEng(s7[i + 1] +' '+ s7[i + 2])!=''||trans6ToEng(s7[i + 1] +' '+ s7[i + 2])!=null) {
s7[i + 1] = trans6ToEng(s7[i + 1] +' '+ s7[i + 2]);
s7[i + 2] = "";
}
i += 2;
}else if (p7>=p1&&p7>=p2&&p7>=p3 && p7>=passTo){
if(trans6ToEng(s7[i+1])!=''||trans6ToEng(s7[i+1])!=null){
s7[i+1] = trans6ToEng(s7[i+1]);
}
i++;
}
}
}
if(s7.length>=2) {
double p4 = percentCheck(
matchEngto6(trans6ToEng(s7[s7.length - 2])), s7[s7.length - 2]);
double p5 = percentCheck(matchEngto6(trans6ToEng(s7[s7.length - 2] +' '+
s7[s7.length - 1])),
s7[s7.length - 2] + ' '+s7[s7.length - 1]);
double p6 = percentCheck(
matchEngto6(trans6ToEng(s7[s7.length - 1])), s7[s7.length - 1]);
if (p4 > p5 && p4 >= p6&&p4>=passTo) {
if(trans6ToEng(s7[s7.length - 2])!=''||trans6ToEng(s7[s7.length - 2])!=null) {
s7[s7.length - 2] = trans6ToEng(s7[s7.length - 2]);
if(p6>=passTo) {
s7[s7.length - 1] = trans6ToEng(s7[s7.length - 1]);
}

}

} else if (p5 >= p4 && p5 >= p6&&p5>=passTo) {
if(trans6ToEng(s7[s7.length - 2] +' '+
s7[s7.length - 1])!=''||trans6ToEng(s7[s7.length - 2] +' '+
s7[s7.length - 1])!=null) {
s7[s7.length - 2] = trans6ToEng(s7[s7.length - 2] +' '+
s7[s7.length - 1]);
s7[s7.length - 1] = "";
}
} else if (p6 >= p4 && p6 >= p5&&p6>=passTo) {
if(trans6ToEng(s7[s7.length - 1])!=''||trans6ToEng(s7[s7.length - 1])!=null) {
s7[s7.length - 1] = trans6ToEng(s7[s7.length - 1]);
}
}
}else{
if(percentCheck(matchEngto6(trans6ToEng(s7[s7.length-1])), s7[s7.length-1])>=passTo)
s7[s7.length-1]= trans6ToEng(s7[s7.length-1]);
}
// setState(() {

result =putBack(s7) ;
// });
}
}
},
child: Text('Translate'),
),
);
}
}
*/

void transFunction (){

}

class TransForm extends StatefulWidget {
  @override
  TransFormState createState() {
    return TransFormState();
  }
}
class TransFormState extends State<TransForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Center(
          child: RaisedButton(

            onPressed: () {
              //Clipboard.setData(ClipboardData(text: quote));
              setState(() {
                transFunction();
              });
              final snackBar = SnackBar(
                content: Text('Translation Complete'),
              );

              // Find the Scaffold in the widget tree and use
              // it to show a SnackBar.
              Scaffold.of(context).showSnackBar(snackBar);
            },

            child: Text('Translate'),
          )
      ),
    ) ;
  }
}
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth/100;
    blockSizeVertical = screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;
  }
}
GlobalKey _keyC1 = GlobalKey();
GlobalKey _keyC2 = GlobalKey();
GlobalKey _keyC3 = GlobalKey();
GlobalKey _keyC4 = GlobalKey();
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        body:  new Material(
            child: new Container (
                height: height,
                padding: EdgeInsets.fromLTRB(width/10,0,width/10,0),
                color: Colors.white,
                child: new Container(

                  child: SingleChildScrollView(
                      child:
                      new Column(
                          children: [
                            Center(
                                child: Column(
                                    children:<Widget>[
                                      new Padding(padding: EdgeInsets.only(top: height/9)),
                                      new Text('Toronto',
                                        style: new TextStyle(
                                            color: Colors.lightBlue[600],
                                            fontSize: 50.0,
                                        fontWeight:FontWeight.bold ),),
                                     // new Padding(padding: EdgeInsets.only(top:1.0)),
                                      new Text('Translate',
                                        style: new TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                                      MainForm(),
                                     /*8 Row(
                                        children: <Widget>[
                                          new Padding(padding: EdgeInsets.all(25.0)),
                                          TransForm(),
                                          new Padding(padding: EdgeInsets.all(25.0)),
                                          SnackBarCopyButton(),

                                        ],
                                      ),*/
                                     Row(
                                       children: <Widget>[
                                         Text(
                                           'Direction:',
                                           textAlign: TextAlign.left,
                                           overflow: TextOverflow.visible,
                                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),

                                         ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: DropDownWidget(),
                                        ),

                                       ],
                                     )

                                    ]
                                )
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Original Text:',
                                            key: _keyC1,
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),

                                          ),
                                          color: Colors.lightBlue,
                                        ),
                                        Container(
                                          width: width - 2*width/10 - 160,
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        ogText,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),

                                      ),
                                      color: Colors.orange,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Translation: ' ,
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),

                                          ),
                                          color: Colors.lightBlue,
                                        ),
                                        Container(
                                          width: width - 2*width/10 - 160,
                                        )
                                      ],
                                    ),

                                    Container(
                                      child: Text(
                                        result,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ],
                                )
                            ),
                            // Align(
                            //      alignment: Alignment.centerLeft,
                            //    child:   Column(

                            // children: <Widget>[


                            //   ],
                            //    )
                            //    ),


                            // new DropdownButton(items: null, onChanged: null),
                          ]
                      )
                  ),
                )
            )
        )
    );
  }
}

var boxTrans = SizedBox(
    width: width/7,
    child: Text('Translate',
      style: new TextStyle(fontSize: 13),
      textAlign: TextAlign.center,
    )
);





double width;
double height;
int buttonSections =8;
String ogText ='';
double getwidthC1() {
  final RenderBox renderBox1 = _keyC1.currentContext.findRenderObject();
  final size1 = renderBox1.size.width;
  return size1;
}
double getwidthC2() {
  final RenderBox renderBox1 = _keyC2.currentContext.findRenderObject();
  final size1 = renderBox1.size.width;
  return size1;
}
double getwidthC3() {
  final RenderBox renderBox1 = _keyC3.currentContext.findRenderObject();
  final size1 = renderBox1.size.width;
  return size1;
}
double getwidthC4() {
  final RenderBox renderBox1 = _keyC4.currentContext.findRenderObject();
  final size1 = renderBox1.size.width;
  return size1;
}


List<String> deAz(List<String> s) {
  if (s.isNotEmpty) {
    for (int i = 0; i <= s.length - 1; i++) {
      if (s[i].length >= 2) {
        if (s[i].substring(s.length - 2, s.length).toLowerCase() == 'az') {
          s[i] = s[i].substring(0, s.length - 2);
        }
        }
    }
   }
  return s;
}
List<String> giveAz(List<String> s) {

    if(s.isNotEmpty){
      for (int i = 0; i <= s.length - 1; i++) {
        int rng1 = rng.nextInt(30);
        if (rng1 >= 0 && rng1 <= 4) {
          s[i] += 'az';
        }
      }
    }
    return s;
}
List<String> giveStill(List<String> s){
  int rng1 = rng.nextInt(4);
  if(s.isNotEmpty){
    if(rng1 ==0 ){

      s[s.length-1] +=' still';
    }else if(rng1 ==1){
      s[s.length-1] ='styll';
    }
  }
  return s;
}
List<String> deStill(List<String> s){
  if(s.isNotEmpty){
    if(s[s.length-1]=='still'||s[s.length-1]=='styll'||s[s.length-1]=='shtyll'){
      s[s.length-1] ='';
      return s;
    }
  }

}