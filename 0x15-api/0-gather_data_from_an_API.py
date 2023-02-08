#!/usr/bin/python3
'''
    Take employeeId and get todo list using an API
    Makes API calls to https://jsonplaceholder.typicode.com/
'''


import urllib.request as rq
import json
import sys

idx = int(sys.argv[1])


resp = rq.urlopen("https://jsonplaceholder.typicode.com/todos/")
resp = resp.read()
dic = json.loads(resp)
resp = rq.urlopen("https://jsonplaceholder.typicode.com/users/" + str(idx))
resp = resp.read()
user = json.loads(resp)
titles = []
count = 0

for task in dic:
    if task.get("userId") == idx:
        count += 1
        if task.get("completed"):
            titles.append(task.get("title"))

print("Employee " + user.get('name') + "is done with tasks(" + str(len(titles))
      + "/" + str(count) + "):")
for title in titles:
    print("\t", title)
