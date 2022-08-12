package com.example.hotel.modular.hotel.service;

import com.example.hotel.modular.hotel.model.CheckIn;

import java.util.List;
import java.util.Map;


public interface CheckInService {
    int saveCheckIn(CheckIn checkIn);

    List<CheckIn> selectCheckInList(Map<String, Object> map);

    int getTotalCheckIn(Map<String, Object> map);

    void deleteCheckIn(Integer orderId);
}
