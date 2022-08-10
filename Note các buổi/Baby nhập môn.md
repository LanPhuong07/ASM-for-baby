
<h2>1. Biến trong ASM</h2>
Được khai báo trong .data

![[Pasted image 20220810094527.png]](https://github.com/LanPhuong07/ASM-for-baby/blob/main/pic/Pasted%20image%2020220810094527.png)


<h2>2. Khai báo biến</h2> 

Khai báo biến text có sẵn ```
<biến> <directive> "text", 0**```

ex. ```msg db "Hello, World!", 0ah, 0```
-> khai báo chuỗi msg có đặc tả là db với nội dung là "Hello, World!"


<h2>3. Khai báo biến mảng (chuỗi)</h2>

Syntax: ``<biến> <directive> <số phần tử> dup (?)``

ex. ``n db 3 dup(?)``
-> Khai báo mảng n có 3 phần tử ngẫu nhiên


<h2>4. Nhập xuất 1 phần tử</h2> 

- Nhập:
 
```push
push <số phần tử> 
push offset <biến cần nhập>

call StdIn
```

- Xuất: 
```push
push offset <biến cần xuất>
call StdOut
```
Trong ASM, nhập hay xuất đều ở dạng chuỗi