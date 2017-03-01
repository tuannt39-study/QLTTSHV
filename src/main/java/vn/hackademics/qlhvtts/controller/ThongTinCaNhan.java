package vn.hackademics.qlhvtts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by buibichngoc
 * Date: 2/3/2017
 * Time: 3:43 PM.
 */
@Controller
public class ThongTinCaNhan {

    @RequestMapping(value = "/thongtincanhan", method = RequestMethod.GET)
    public String pageThongTinCaNhan() {
        return "thongtincanhan";
    }

}
