import os
current_dir="./brokenAccessControl/hijackingSessionCookie/"

py_gen_file="gen_cookies"
json_gen_file="gen_token"

py_path=os.path.join(current_dir,py_gen_file)
json_path=os.path.join(current_dir,json_gen_file)

tokens1=[]
tokens2=[]
with open(py_path, 'r', encoding='utf-8') as file:
    for line in file:
        line = line.strip()
        if not line: continue
        tokens1.append(line)
with open(json_path, 'r', encoding='utf-8') as file:
    for line in file:
        line = line.strip()
        if not line: continue
        tokens2.append(line)

tokens1=sorted(tokens1)
tokens2=sorted(tokens2)

result=True
for i in range(len(tokens1)):
    if(tokens1[i]!=tokens2[i]):
        result=False
print(result)