import base64

def split_by_2_chars_list_comprehension(input_str):
    return [input_str[i:i+2] for i in range(0, len(input_str), 2)]

def custom_decode(input_str):
    base64_decoded = base64.b64decode(input_str).decode('utf-8')
    base64_decoded=split_by_2_chars_list_comprehension(base64_decoded)
    print(base64_decoded)
    ascii_decoded=[]
    for byte in base64_decoded:
        ascii_decoded.append(chr(int(byte,16)))
    reversed_str = ascii_decoded[::-1]
    return reversed_str

input_string = "NTI0NDRhNGM2MTVhNjQ2ZTc4NTY2ZTY5NmQ2NDYx"
result = custom_decode(input_string)
print("Result:", "".join(result))