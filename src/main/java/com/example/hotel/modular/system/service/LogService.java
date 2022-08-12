package com.example.hotel.modular.system.service;



import com.example.hotel.modular.system.model.Log;

import java.util.List;
import java.util.Map;


public interface LogService {

    void saveLog(Log log);


    List<Log> selectLogList(Map<String, Object> map);

    int getTotalLog(Map<String, Object> map);

    List<Log> selectLogList1();
}
