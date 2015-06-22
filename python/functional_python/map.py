def format_name(s):
    return s[0].upper() + s[1:].lower()

#print(list(map(format_name, ['adam', 'LISA', 'barT'])))
print(list(map(lambda s: s[0].upper() + s[1:].lower(), ['adam', 'LISA', 'barT'])))
