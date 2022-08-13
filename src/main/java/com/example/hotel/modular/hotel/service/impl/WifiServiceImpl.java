package com.example.hotel.modular.hotel.service.impl;

import com.example.hotel.modular.hotel.dao.WifiMapper;
import com.example.hotel.modular.hotel.model.RoomInfo;
import com.example.hotel.modular.hotel.model.Wifi;
import com.example.hotel.modular.hotel.service.WifiService;
import com.google.common.base.Preconditions;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("WifiService")
public class WifiServiceImpl implements WifiService {

    @Resource
    private WifiMapper wifiMapper;

    @Override
    public int saveWifi(Wifi wifi) {
        return wifiMapper.insertSelective(wifi);
    }

    @Override
    public int deleteWifiById(Long wifiId) {
        Wifi before = wifiMapper.selectByPrimaryKey(wifiId);
        Preconditions.checkNotNull(before, "需删除的Wifi不存在");
        return wifiMapper.deleteByPrimaryKey(wifiId);
    }

    @Override
    public int updateWifi(Wifi wifi) {
        Wifi before = wifiMapper.selectByPrimaryKey(wifi.getWifiId());
        Preconditions.checkNotNull(before, "需更新的Wifi不存在");
        return wifiMapper.updateByPrimaryKey(wifi);
    }

    @Override
    public List<Wifi> selectWifiList(Map<String, Object> map) {
        return wifiMapper.selectWifiList(map);
    }

    @Override
    public int getTotalWifi() {
        return wifiMapper.getTotalWifi();
    }

    @Override
    public Wifi findById(Long wifiId) {
        return wifiMapper.selectByPrimaryKey(wifiId);
    }
}
