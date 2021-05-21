//
//  main.swift
//  Day2
//
//  Created by Trang Huyền on 5/19/21.
//

import Foundation

let str = "Hom nay troi nong qua."
print(str.count)

//MARK: - Cau dieu kien
if str.count < 10 {
    print("Chuoi qua ngan")
} else {
    print("Chuoi khong ngan")
    
}

if str.count > 10 {
    print("Chuỗi quá ngắn")
}
else if str.count < 20 {
    print("Chuỗi có độ dài trung bình")
}
else {
    print("Chuỗi dài")
}

//MARK: Cho so nguyen n. kiem tra n la so am, so 0, hay so duong

var n : Int = 10

if n < 0 {
    print("n la so am")
}
else if n == 0 {
    print("n bằng 0")
}
else {
    print("n la so duong")
}

// MARK: Cho so nguyen b. Kiem tra b la so chan hay so le

//var b : Int = 3
//
//b % 2 == 0 ? print("b = \(b) la so chan") : print("b = \(b) la so le")

// = là gán
// === so sánh ô nhớ

var isMale : Bool = true
// C1
if isMale == true {
    print("Gioi tinh nam")
}
else {
    print("Gioi tinh nu")
}

// C2
if isMale {
    print("Gioi tinh nam")
}
else {
    print("Gioi tinh nu")
}

// C4
// su dung ! dung trước isMale là gía trị đảo nguoc cua doi tuong bool
// !isMale = false
if !isMale {
    print("Gioi tinh nu")
}
else {
    print("Gioi tinh nam")
}

// C5: biểu thuc dieu kien 3 ngoi
isMale ? print("Gioi tinh nam") : print("Gioi tinh nu")

// MARK: Cho hai so x va y. Viet ham Kiem tra xem x co chia het cho y hay ko.

func kiemTraChiHet(x: Int, y: Int)  {
    if y == 0 {
        print("y khong hop le")
        return
    }
    if x % y == 0 {
        print("\(x) chia het cho \(y) ")
    }
    else {
        print("\(x) khong chia het cho \(y)")
    }
}
//MARK: - cho 2 so x, y. Viet ham kiem tra so lon hon

func kiemTraSoLon(x: Float, y: Float) -> Float {
//    if x >= y {
//        return x
//    }
//    return y
    return x >= y ? x : y
}

//MARK: giai phuong trinh bac nhat ax + b = c
//var a = 3
//var b = 4
//var c = 5
//
func gptBacNhat(a: Float, b: Float, c: Float) {
    if a == 0 {
        b == c ? print("Phuong trinh vo so nghiem") : print("Phuong trinh vo nghiem")
    }
    else {
       print("Phuong trinh co nghiem duy nhat x = \((c-b)/a)")
    }
}

print(gptBacNhat(a: 2, b: 3, c: 6))
// MARK : giai phuong trinh bac 2 : ax^2 + bx + c = 0 (a#0)

func gptBacHai(a: Float, b: Float, c: Float) -> String {
    let denta = b*b - 4*a*c
    if denta > 0 {
        let x1 = (-b - sqrt(denta))/(2*a)
        let x2 = (-b + sqrt(denta))/(2*a)
        return "Phuong trinh co hai nghiem phan biet x1 = \(x1) va x2 = \(x2)"
    }
    else if denta == 0 {
        let x = -b/(2*a)
        return "Phuong trinh co nghiem kep x = \(x)"
    }
    return "Phuong trinh vo nghiem"
    
}

print(gptBacHai(a: 1, b: 2, c: 2))

// MARK: Cau dieu kien switch...case
var number = 2

switch number {
case 1:
    print("number la 1")
case 2:
    print("number la 2")
case 3:
    print("number la 3")
case 4:
    print("number la 4")
case 5:
    print("number la 5")

default:
    print("number khong nam trong cac so 1 den 5")
}

switch number {
case 1..<5:
    print("number nam trong khoang 1 den 4")
case 6...10:
    print("number nam trong khoang 6 den 10")
case 11...15:
    print("number nam trong khoang 11 den 15")
case 16...20:
    print("number nam trong khoang 16 den 20")

default:
    print("number khong nam trong khoang 1 den 20")
}

//MARK: Cho diem 3 mon toan, ly, hoa.Viet ham Tinh diem trung binh va xep loai hoc luc. Biet
/*
 0 - <3: hoc luc yeu
 3 - <5: hoc luc kem
 5 - <6.5 : trung binh
 6.5 - <8: kha
 8 - 10: Gioi
 */

func hocLuc(toan: Float, ly: Float, hoa: Float) -> String {
    if toan < 0 || ly < 0 || hoa < 0 {
        return "Diem nhap vao ko hop le"
    }
    
    let diemTB = (toan + ly + hoa)/3
    switch diemTB {
    case 0..<3:
        return "Hoc luc yeu"
    case 3..<5:
        return "Hoc luc kem"
    case 5..<6.5:
        return "Hoc luc trung binh"
    case 6.5..<8:
        return "Hoc luc kha"
    case 8...10:
        return "Hoc luc gioi"
    default:
        return "diem nhap vao khong hop le"
    }
}

print(hocLuc(toan: 5, ly: 5, hoa: 6))

// MARK: vong lap
for i in 40...50 {
    print(i)
}

var name  = "Quynh"
//name.lowercased() // viet thuong
//name.uppercased() // viet hoa

func daoNguocHoaThuong(str: String) -> String {
    var newString = ""
    for i in name {
        if i.isUppercase {
            newString = newString + i.lowercased()
        }
        else if i.isLowercase {
            newString = newString + i.uppercased()
        }
    }

    return newString
}
print(daoNguocHoaThuong(str: name))

//MARK: Cho day tu 1...50, hay dem xem co bao nhieu so chan

func demSoChan(start: Int, end: Int) -> Int {
    var dem = 0
    for i in start...end {
        if i % 2 == 0 {
            dem = dem + 1
        }
    }
    return dem
}
print(demSoChan(start: 1, end: 50))
