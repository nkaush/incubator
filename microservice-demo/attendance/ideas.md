# attendance-service:

## Endpoints
- `GET /student`: find a student's ID based using the student's name
- `GET /<student>/attendance`: get the attendance record of a student
- `POST /attendance`: log attendance for a day by sending a JSON file of student IDs and attendence status (absent, excused, present, etc...)