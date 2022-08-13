package com.example.hotel.modular.hotel.dao;

import com.example.hotel.modular.hotel.model.Wifi;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WifiMapper {
    int deleteByPrimaryKey(Long wifiId);

    int insert(Wifi record);

    int insertSelective(Wifi record);

    Wifi selectByPrimaryKey(Long wifiId);

    int updateByPrimaryKeySelective(Wifi record);

    int updateByPrimaryKey(Wifi record);

    List<Wifi> selectWifiList(Map<String, Object> map);

    int getTotalWifi();
}
