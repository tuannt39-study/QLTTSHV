package vn.hackademics.qlhvtts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HocPhi {

    @RequestMapping(value = "/hocphi", method = RequestMethod.GET)
    public String pageHocPhi() {
        return "hocphi";
    }

}
