class Person(object):
    def __init__(self, name, gender):
        self.name = name
        self.gender = gender

class Student(Person):
    def __init__(self, name, gender, score):
        super(Student, self).__init__(name, gender)
        self.score = score

s = Student('Louis', 'Male', 88)
print(s.name)
print(s.score)
print(isinstance(s, Person))
