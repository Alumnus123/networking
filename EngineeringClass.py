class EngineeringClass:
    def __init__(self, department, student):
        self.Department = department
        self.Student = student

    def dept_details(self):
        return self.Department + " has "+ self.Student + " students"

