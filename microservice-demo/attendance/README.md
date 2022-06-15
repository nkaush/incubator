# attendance-service:

## Endpoints
- `GET /<studentid>/attendance`: get the attendance record of a student
- `POST /attendance`: log attendance for a day by sending a JSON file of student IDs and attendence status (absent, excused, present, etc...)