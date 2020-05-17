import 'package:flutter/material.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "T-Dot Translator",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children: [
                            new Padding(padding: EdgeInsets.only(top: 140.0)),
                            new Text('The T-Dot Translator',
                              style: new TextStyle(color: hexToColor("#E74C3C"),
                                  fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            /*new TextFormField(
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
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Please enter some text";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ), */
                            MyCustomForm(),
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
    /*String engTo6() {
      return "3";
    }*/
    Map<int, String> dictEng = {
      1: 'hello friend',
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
  38: 'girl',
  39: 'girl',
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
      78: 'pass'
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
    78: 'swing'
};

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
List<String> breakDown(String s){
  return s.split(" ");
}
String putBack(List<String> s5) {
  String s6 = s5[0];
  for (int i = 1; i <= s5.length - 1; i++) {
    s6 = s6 + ' ' + s5[i];
  }
  return s6;
}
String transEngTo6(String s3){
if( s3.isNotEmpty){
  int index= 0;
double best=0;
  for (var i =1;i <= 77;i++){
    if (percentCheck(s3,dictEng[i])>= best && percentCheck(s3,dictEng[i]) >= 0.75){
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
String trans6ToEng(String s4){
  var index= 0;
  double best=0;
  for (var i =1;i <= 77;i++){
    if (percentCheck(s4,dictEng[i])>= best){
      index = i;
      best = percentCheck(s4,dict6[i]);
    }
  }
  return dict6[index];
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




class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
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
      validator: (val) {
        if (val.length == 0) {
          return "Please enter some text";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.text,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  if(trans){
                    List<String> s7= breakDown(myController.text.toLowerCase());

                    for (int i =0;i<=s7.length-3;i++){
                      double p1 = percentCheck(transEngTo6(s7[i]),s7[i]);
                      double p2 = percentCheck(transEngTo6(s7[i]+s7[i+1]),s7[i]+s7[i+1]);
                      double p3 = percentCheck(transEngTo6(s7[i+1]+s7[i+2]),s7[i+1]+s7[i+2]);
                      if (p1>p2 && p1>p3){
                        s7[i] = transEngTo6(s7[i]);
                      }else if(p2>p1 && p2>p3){
                        s7[i] = transEngTo6(s7[i]+s7[i+1]);
                        s7[i+1] ="";
                        i++;
                      }else if (p3>p1 && p3>p2){
                        s7[i+1] = transEngTo6(s7[i+1]+s7[i+2]);
                        s7[i+2] ="";
                        i+= 2;
                      }

                    }
                    double p4 = percentCheck(transEngTo6(s7[s7.length-2]),s7[s7.length-2]);
                    double p5 = percentCheck(transEngTo6(s7[s7.length-2]+s7[s7.length-1]),s7[s7.length-2]+s7[s7.length-1]);
                    double p6 = percentCheck(transEngTo6(s7[s7.length-1]),s7[s7.length-1]);
                    if (p4>p5 && p4>p6){
                      s7[s7.length-2] = transEngTo6(s7[s7.length-2]);
                    }else if(p5>p4 && p5>p6 ){

                      s7[s7.length-2] = transEngTo6(s7[s7.length-2]+s7[s7.length-1]);
                      s7[s7.length-1]="";
                    }else if (p6>p4 && p6>p5){
                      s7[s7.length-1] = transEngTo6(s7[s7.length-1]);
                    }

                    setState(() {

                      result =putBack(s7);
                    });
                  }else{
                    setState(() {
                      result = transEngTo6(myController.text.toLowerCase()[1]) + percentCheck(myController.text.toLowerCase()[1], 'hi').toString();
                    });
                  }
                }
              },
              child: Text('Submit'),
            ),
          ),

          /*DropdownButton(
              value: selected,
              hint: new Text('Select Translation'),

             )*/
          MyStatefulWidget(),
          Text(
            result,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
       )
     ) ;
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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

