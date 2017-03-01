package vn.hackademics.qlhvtts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by buibichngoc
 * Date: 2/16/2017
 * Time: 1:28 PM.
 */
@Controller
public class QuanLyTaiKhoan {
    @RequestMapping(value = "/quanlytaikhoan", method = RequestMethod.GET)
    public String pageQuanLyTaiKhoan() {
        return "quanlytaikhoan";
    }
}
