package vn.hackademics.qlhvtts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.net.URL;

/**
 * Created by minht on 3/2/2017.
 */
@Controller
public class BackOffice {
    @RequestMapping(value = "/doitac", method = RequestMethod.GET)
    public String pageDoiTac() {
        return "doitac";
    }
    @RequestMapping(value = "/thuctapsinh",method = RequestMethod.GET)
    public String pageTTS(){
        return "thuctapsinh";
    }
    @RequestMapping(value = "/thaydoithongtincanhan",method = RequestMethod.GET)
    public String pageThongTinCaNhan(){
        return "thaydoithongtincanhan";
    }
}
