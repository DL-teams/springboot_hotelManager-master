package com.example.hotel.modular.system.controller;

import com.example.hotel.core.common.page.DataGridDataSource;
import com.example.hotel.core.common.page.JsonData;
import com.example.hotel.core.common.page.PageBean;
import com.example.hotel.modular.system.model.Announcement;
import com.example.hotel.modular.system.service.AnnouncementService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/announcement")
public class AnnouncementController {

    @Resource
    private AnnouncementService announcementService;

    @PutMapping("/update")
    public JsonData updateAnnouncement(Announcement announcement) {
        int count = announcementService.updateAnnouncement(announcement);
        if (count > 0) {
            return JsonData.success(count, "更新成功");
        } else {
            return JsonData.fail("更新失败");
        }
    }

    @PostMapping("/list")
    public DataGridDataSource<Announcement> listWifi(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                                             @RequestParam(value = "rows", required = false, defaultValue = "5") Integer rows) {
        PageBean pageBean = new PageBean(page, rows);
        Map<String, Object> map = new HashMap<>();
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPageSize());
        List<Announcement> announcementList = announcementService.selectAnnouncementList(map);

        int totalAnnouncement = announcementService.getTotalAnnouncement();
        DataGridDataSource<Announcement> dataGridDataSource = new DataGridDataSource<>();
        dataGridDataSource.setTotal(totalAnnouncement);
        dataGridDataSource.setRows(announcementList);
        return dataGridDataSource;
    }
}
