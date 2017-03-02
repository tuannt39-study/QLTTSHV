package vn.hackademics.qlhvtts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by quang on 2/14/2017.
 */
@Controller
public class Danhsachgiangvien {

    @RequestMapping(value = "/danhsachgiangvien" , method = RequestMethod.GET)
    public String danhsachgiangvienPage(){
        return "danhsachgiangvien";
    }

    @RequestMapping(value = "/thongtingiangvien/{maGVTG}" , method = RequestMethod.GET)
    public String thongtingiangvienPage(@PathVariable(value = "maGVTG") String maGVTG){
        return "thongtingiangvien";
    }

    @RequestMapping(value = "/capnhatgiangvien/{maGVTG}" , method = RequestMethod.GET)
    public String capnhatGVPage(){
        return "capnhatgiangvien";
    }
}
