package vn.hackademics.qlhvtts;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by buibichngoc on 1/19/2017.
 */
public class App {
    public static void main(String[] args) {
        String password = "bbngoc";
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        System.out.println(passwordEncoder.encode(password));
    }
}
