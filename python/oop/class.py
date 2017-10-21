class Person(object):
    def __init__(self, name, gender, birth, **kw):
        self.name = name
        self.gender = gender
        self.birth = birth
        for k, v in kw.items():
            setattr(self, k, v)

louis = Person('Lous', 'Male', '1990-09-02', job='Engineer')
print(louis.name)
print(louis.job)
