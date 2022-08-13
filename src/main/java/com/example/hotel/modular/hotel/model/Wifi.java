package com.example.hotel.modular.hotel.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class Wifi {
    private Long wifiId;

    private String wifiName;

    private String wifiPassword;

    @JsonFormat(locale = "zh", timezone = "GMT", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date wifiCreateTime;

    @JsonFormat(locale = "zh", timezone = "GMT", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date wifiLastModifyTime;
}
