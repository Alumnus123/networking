import log_example


def add(a, b, *arg):
    sum_args = a + b
    for i in arg:
        sum_args += i
    return sum_args


z = add(1, 2, 3, 4)
logging.info(z)


