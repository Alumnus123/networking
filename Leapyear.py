def leap_year(year):
    if int(year) % 4 == 0:
        if int(year) % 100 == 0:
            if int(year) % 400 == 0:
                return "Leap Year"
            else:
                return "Not Leap Year"
        else:
            return "Leap Year"
    else:
        return "Not Leap Year"

