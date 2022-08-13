package com.example.hotel.modular.hotel.controller;

import com.example.hotel.core.common.page.DataGridDataSource;
import com.example.hotel.core.common.page.JsonData;
import com.example.hotel.core.common.page.PageBean;
import com.example.hotel.modular.hotel.model.Wifi;
import com.example.hotel.modular.hotel.service.WifiService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/wifi")
@CrossOrigin
public class WifiController {

    @Resource
    private WifiService wifiService;

    @PostMapping("/save")
    public JsonData saveWifi(Wifi wifi) {
        int count = wifiService.saveWifi(wifi);
        if (count > 0) {
            return JsonData.success(count, "添加成功");
        } else {
            return JsonData.fail("添加失败");
        }
    }

    @DeleteMapping("/delete")
    public JsonData deleteWifi(@RequestParam(value = "wifiId") Long wifiId) {
        int count = wifiService.deleteWifiById(wifiId);
        if (count > 0) {
            return JsonData.success(count, "删除成功");
        } else {
            return JsonData.fail("删除失败");
        }
    }

    @PutMapping("/update")
    public JsonData updateWifi(Wifi wifi) {
        int count = wifiService.updateWifi(wifi);
        if (count > 0) {
            return JsonData.success(count, "修改成功");
        } else {
            return JsonData.fail("修改失败");
        }
    }

    @GetMapping("/list")
    public DataGridDataSource<Wifi> listWifi(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                             @RequestParam(value = "rows", required = false, defaultValue = "5") Integer rows) {
        PageBean pageBean = new PageBean(page, rows);
        Map<String, Object> map = new HashMap<>();
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPageSize());
        List<Wifi> wifiList = wifiService.selectWifiList(map);

        int totalWifi = wifiService.getTotalWifi();
        DataGridDataSource<Wifi> dataGridDataSource = new DataGridDataSource<>();
        dataGridDataSource.setTotal(totalWifi);
        dataGridDataSource.setRows(wifiList);
        return dataGridDataSource;
    }

    @GetMapping("/listById")
    public JsonData listById(@RequestParam(value = "wifiId") Long wifiId) {
        return JsonData.success(wifiService.findById(wifiId));
    }
}
