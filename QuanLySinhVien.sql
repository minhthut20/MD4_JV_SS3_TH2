USE QuanLySinhVien;
SELECT * FROM Student;
-- Hiển thị danh sách sinh viên có status = true
SELECT *
FROM Student
WHERE Status = true;
-- Hiển thị các môn học có số tiết nhỏ hơn 10
SELECT *
FROM Subject
WHERE Credit < 10;
-- Hiển thị danh sách các sinh viên có cùng lớp A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';
-- Hiển thị danh sách các các sinh viên có điểm
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId;
-- Hiển thị điểm của các sinh viên đối với môn CF
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';