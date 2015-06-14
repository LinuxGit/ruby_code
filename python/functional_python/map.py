def format_name(s):
    return s[0].upper() + s[1:].lower()

print(list(map(format_name, ['adam', 'LISA', 'barT'])))
