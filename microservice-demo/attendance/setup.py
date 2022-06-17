import guid

use_statement = 'USE `microservice_demo`;'
roles_header = 'INSERT INTO `roles` (`Sid`, `RoleName`) VALUES'
roles_fmt = '\t("{}", "{}")'

people_header = 'INSERT INTO `people` (`Sid`, `Name`, `RoleSid`) VALUES'
people_fmt = '\t("{}", "{}", "{}")'

roles = ['director', 'instructor', 'student', 'alum']
people = [
    ['Helena', 'director'],
    ['Neil', 'instructor'],
    ['Faraz', 'instructor'],
    ['Bob', 'student'],
    ['Joe', 'student'],
    ['Sam', 'student'],
    ['Aman', 'student']
]

sids = dict()

if __name__ == "__main__":
    print(use_statement)
    print(roles_header)
    for idx, role in enumerate(roles):
        sid = str(guid.guid.uuid4())
        out = roles_fmt.format(sid, role) 
        sids[role] = sid
        
        if idx == len(roles) - 1:
            out += ';'
        else:
            out += ','
        
        print(out)
    
    print(people_header)
    for idx, person in enumerate(people):
        name, role = person
        role_sid = sids[role]
        sid = str(guid.guid.uuid4())
        out = people_fmt.format(sid, name, role_sid)

        if idx == len(people) - 1:
            out += ';'
        else:
            out += ','
        
        print(out)
