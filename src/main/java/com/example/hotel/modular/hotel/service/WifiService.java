package com.example.hotel.modular.hotel.service;

import com.example.hotel.modular.hotel.model.Wifi;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;

public interface WifiService {

    int saveWifi(Wifi wifi);

    int deleteWifiById(Long wifiId);

    int updateWifi(Wifi wifi);

    List<Wifi> selectWifiList(Map<String, Object> map);

    int getTotalWifi();

    Wifi findById(Long wifiId);
}
