package com.example.hotel.modular.system.service.impl;

import com.example.hotel.modular.system.dao.AnnouncementMapper;
import com.example.hotel.modular.system.model.Announcement;
import com.example.hotel.modular.system.service.AnnouncementService;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("AnnouncementService")
public class AnnouncementServiceImpl implements AnnouncementService {

    @Resource
    private AnnouncementMapper announcementMapper;

    @Override
    public int updateAnnouncement(Announcement announcement) {
        return announcementMapper.updateByPrimaryKey(announcement);
    }

    @Override
    public List<Announcement> selectAnnouncementList(Map<String, Object> map) {
        return announcementMapper.selectAnnouncementList(map);
    }

    @Override
    public int getTotalAnnouncement() {
        return announcementMapper.getTotalAnnouncement();
    }
}
