//
//  Bai1.swift
//  Baitapbuoi5
//
//  Created by Trương Duy Tân on 25/04/2023.
//

import Foundation
func Bai1(){
    struct SinhVien{
        var name:String
        var maSinhVien:String
        var diemToan:Double
        var diemLy:Double
        var diemHoa:Double
        init(name: String, maSinhVien: String, diemToan: Double, diemLy: Double, diemHoa: Double) {
            self.name = name
            self.maSinhVien = maSinhVien
            self.diemToan = diemToan
            self.diemLy = diemLy
            self.diemHoa = diemHoa
        }
        
        func diemTrungBinh() ->Double{
            return (diemToan+diemLy+diemHoa)/3
        }
    }
        var danhSachSinhVien = [SinhVien]()
    func themSinhVien(){
        print("Nhập tên: ")
        let name = readLine() ?? ""
        print("Nhập mã: ")
        let maSinhVien = readLine() ?? ""
        print("Điểm toán:")
        var diemToan = Double(readLine() ?? "") ?? 0
        print("Điểm lý:")
        var diemLy = Double(readLine() ?? "") ?? 0
        print("Điểm hóa:")
        var diemHoa = Double(readLine() ?? "") ?? 0
        var sinhVienMoi = SinhVien(name: name, maSinhVien: maSinhVien, diemToan: diemToan, diemLy: diemLy, diemHoa: diemHoa)
        danhSachSinhVien.append(sinhVienMoi)
    }

    func capNhatDiem(){
        print("Cập nhật điểm sinh viên: ")
        print("Nhập mã sinh viên: ")
        let maSinhVienUpdate = readLine() ?? ""
        for i in 0..<danhSachSinhVien.count{
            if danhSachSinhVien[i].maSinhVien == maSinhVienUpdate{
                print("Điểm toán:")
                let diemToanUpDate = Double(readLine() ?? "") ?? 0
                print("Điểm lý:")
                let diemLyUpdate = Double(readLine() ?? "") ?? 0
                print("Điểm hóa:")
                let diemHoaUpdate = Double(readLine() ?? "") ?? 0
                danhSachSinhVien[i].diemToan = diemToanUpDate
                danhSachSinhVien[i].diemLy = diemLyUpdate
                danhSachSinhVien[i].diemHoa = diemHoaUpdate
            }
            
        }
    }


    func hienThiSinhVien(){
        //sắp xếp
        for i in 0..<danhSachSinhVien.count-1{
            for j in i..<danhSachSinhVien.count{
                if(danhSachSinhVien[i].diemTrungBinh() < danhSachSinhVien[j].diemTrungBinh()){
                    danhSachSinhVien.swapAt(i, j)
                }
            }
        }
        for i in danhSachSinhVien{
            print("Tên sv: \(i.name), Mã sv: \(i.maSinhVien), Điểm toán: \(i.diemToan), Điểm lý: \(i.diemLy), Điểm hóa: \(i.diemHoa)")
        }
    }
    func main(){
        let choose:String = """
        1. Thêm sinh viên.
        2. Cập nhật điểm.
        3. Hiển thị sinh viên.
        """
        print(choose)
        print("Nhập lựa chọn:")
        var luaChon = Int(readLine()!)!
        switch luaChon{
        case 1:
            themSinhVien()
        case 2:
            capNhatDiem()
        case 3:
            hienThiSinhVien()
        default:
            print("Mời chọn lại!")
        }
        main()
        
    }
    main()
}
