package com.example.hotel.modular.system.service;

import com.example.hotel.modular.system.model.Announcement;
import java.util.List;
import java.util.Map;

public interface AnnouncementService {

    int updateAnnouncement(Announcement announcement);

    List<Announcement> selectAnnouncementList(Map<String, Object> map);

    int getTotalAnnouncement();
}
