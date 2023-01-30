def args_func(first_item, second_item, *rest_of_item):
    total = int(first_item) + int(second_item)
    for value in rest_of_item:
        total += int(value)
    return total

