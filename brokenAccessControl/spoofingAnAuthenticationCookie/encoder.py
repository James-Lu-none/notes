import base64

def custom_encode(input_str):
    reversed_str = input_str[::-1]
    ascii_encoded1=[]
    for char in reversed_str:
        ascii_encoded1.append(hex(ord(char))[2:])
    ascii_encoded1="".join(ascii_encoded1)
    #do ascii encode for each char again
    ascii_encoded2=[]
    for char in ascii_encoded1:
        ascii_encoded2.append(ord(char))
    byte_data=bytes(ascii_encoded2)
    base64_encoded = base64.b64encode(byte_data).decode('utf-8')

    return base64_encoded

salt="VxndZaLJDR"
username="Tom"
print(custom_encode(username+salt))

