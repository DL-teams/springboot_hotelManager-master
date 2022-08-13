package com.example.hotel.modular.hotel.model;

import java.util.Date;
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

    private Date wifiCreateTime;

    private Date wifiLastModifyTime;
}
