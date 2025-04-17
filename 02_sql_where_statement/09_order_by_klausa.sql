/*
Pengurutan data ini bagian yang bisa dibilang penting juga, karena di database itu bisa ada ribuan bahkan jutaan yang klo di select urutannya tidak tentu, 
jadi terkadang kita harus mengurutkan misalnya dari a - z, 1 - 100, 
berdasarkan tanggal dan lain-lain. Dengan perintah order by kita bisa dengan mudah mengimplementasikan pengurutan ini.

asc atau ascending, dimulai dari yang terkecil ke besar
desc atau descending, sebaliknya
*/

/*
Contoh kasusnya saya mau menampilkan data karyawan berdasarkan gaji yang terbesar terlebih dahulu, 
berarti kita menggunakan desc berikut querynya:
*/

select EMPLOYEE_ID as kode, 
      FIRST_NAME as nama_depan,
      SALARY as gaji
from EMPLOYEES
ORDER BY SALARY DESC;

select employee_id as kode,
       first_name as nama_depan,
       job_id as job,
       salary as gaji
from employees
order by job, salary asc;

