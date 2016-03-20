var re = /^\d{3}\-\d{3,8}$/;
re.test('010-8888888');

'a b  c, d'.split(/[\s\,]+/);
//["a", "b", "c", "d"]

//Group
re.exec('010-8888888')
//["010-8888888", "010", "8888888"]

re.exec('123400')
//["123400", "1234", "00"]
re = /^(\d+)(0*)$/;
re.exec('123400')
//["123400", "123400", ""]

var s = 'JavaScript, VBScript, JScript and ECMAScript';
re = /[a-zA-Z]+Script/g;
re.exec(s);
//["JavaScript"]
re.exec(s);
//["VBScript"]
re.exec(s);
//["JScript"]
re.exec(s);
//["ECMAScript"]
re.exec(s);
//null