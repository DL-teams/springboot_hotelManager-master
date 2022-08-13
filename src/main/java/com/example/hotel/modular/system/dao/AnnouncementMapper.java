package com.example.hotel.modular.system.dao;

import com.example.hotel.modular.system.model.Announcement;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AnnouncementMapper {
    int deleteByPrimaryKey(Long announcementId);

    int insert(Announcement record);

    int insertSelective(Announcement record);

    Announcement selectByPrimaryKey(Long announcementId);

    int updateByPrimaryKeySelective(Announcement record);

    int updateByPrimaryKey(Announcement record);

    List<Announcement> selectAnnouncementList(Map<String, Object> mao);

    int getTotalAnnouncement();
}
