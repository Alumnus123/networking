class StudentClass:
    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    def student_detail(self):
        return self.__name + " is " + self.__age + " years old"


def create_student_obj(name, age):
    obj = StudentClass(name, age)
    return obj


def show_detail(obj):
    return obj.student_detail()

