//
//  Bai2.swift
//  Baitapbuoi5
//
//  Created by Trương Duy Tân on 25/04/2023.
//

import Foundation


//Viết một ứng dụng cho phép quản lý thông tin của các sản phẩm trong cửa hàng. Mỗi sản phẩm sẽ có thông tin như sau: Tên, mã sản phẩm, giá bán, số lượng trong kho. Ứng dụng cho phép thêm mới sản phẩm, cập nhật thông tin của sản phẩm, hiển thị danh sách sản phẩm, tìm kiếm sản phẩm theo tên. Sử dụng Class.

func Bai2(){
    class sanPham{
        var tenSanPham:String
        var maSanPham:String
        var giaBan:Double
        var soLuong:Int
        init(tenSanPham: String, maSanPham: String, giaBan: Double, soLuong: Int) {
            self.tenSanPham = tenSanPham
            self.maSanPham = maSanPham
            self.giaBan = giaBan
            self.soLuong = soLuong
        }
    }
    var danhSachSanPham = [sanPham]()
    func themSanPham(){
        print("Tên sản phẩm: ", terminator: "")
        var tenSanPham = readLine() ?? ""
        print("Mã sản phẩm: ", terminator: "")
        var maSanPham = readLine() ?? ""
        print("Giá bán: ", terminator: "")
        var giaBan = Double(readLine() ?? "") ?? 0
        print("Số lượng: ", terminator: "")
        var soLuong = Int(readLine() ?? "") ?? 0
        var sanPhamMoi = sanPham.init(tenSanPham: tenSanPham, maSanPham: maSanPham, giaBan: giaBan, soLuong: soLuong)
        danhSachSanPham.append(sanPhamMoi)
    }
    func capNhatSanPham(){
        print("Nhập mã sản phẩm cập nhật: ")
        var maSanPhamUpdate = readLine() ?? ""
        for i in 0..<danhSachSanPham.count{
            if danhSachSanPham[i].maSanPham == maSanPhamUpdate{
                print("Nhập tên cập nhật: ")
                var tenSanPhamUpdate = readLine() ?? ""
                print("Nhập mã cập nhật: ")
                var maSanPhamUpdate = readLine() ?? ""
                print("Giá cập nhật: ")
                var giaBanUpdate = Double(readLine() ?? "") ?? 0
                print("Số lượng: ")
                var soLuongUpdate = Int(readLine() ?? "") ?? 0
                danhSachSanPham[i].maSanPham = maSanPhamUpdate
                danhSachSanPham[i].tenSanPham = tenSanPhamUpdate
                danhSachSanPham[i].giaBan = giaBanUpdate
                danhSachSanPham[i].soLuong = soLuongUpdate
            }
        }
    }
    func hienThiDanhSachSanPham(){
        for i in danhSachSanPham{
            print("Tên sản phẩm: \(i.tenSanPham), mã sản phẩm: \(i.maSanPham), giá sản phẩm: \(i.giaBan), số lượng: \(i.soLuong)")
        }
    }
    func timKiemSanPham(){
        print("Nhập mã sản phẩm cần tìm: ")
        var maSanPhamSearch = readLine() ?? ""
        for i in 0..<danhSachSanPham.count{
            if danhSachSanPham[i].maSanPham == maSanPhamSearch{
                print("Tên sản phẩm: \(danhSachSanPham[i].tenSanPham), mã sản phẩm: \(danhSachSanPham[i].maSanPham), giá sản phẩm: \(danhSachSanPham[i].giaBan), số lượng: \(danhSachSanPham[i].soLuong)")
            }
        }
    }
    func main(){
        let choose:String = """
        1. Thêm sản phẩm.
        2. Cập nhật sản phẩm.
        3. Hiển thị sản phẩm.
        4. Tìm kiếm sản phẩm.
        """
        print(choose)
        print("Nhập lựa chọn:")
        var luaChon = Int(readLine()!)!
        switch luaChon{
        case 1:
            themSanPham()
        case 2:
            capNhatSanPham()
        case 3:
            hienThiDanhSachSanPham()
        case 4:
            timKiemSanPham()
        default:
            print("Mời chọn lại!")
        }
        main()
        
    }
    main()
}
