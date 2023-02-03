class ParentClass:
    def __init__(self, name, age):
        self.Name = name
        self.Age = age

    def parent_details(self):
        return self.Name + " is " + self.Age + " years old"


def get_details(name, age):
    obj = ParentClass(name, age)
    return obj


def get_output(obj):
    return obj.parent_details()
