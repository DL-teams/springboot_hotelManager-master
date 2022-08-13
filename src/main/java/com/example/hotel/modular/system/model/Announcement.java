package com.example.hotel.modular.system.model;

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
public class Announcement {
    private Long announcementId;

    private String announcementValue;

    @JsonFormat(locale = "zh", timezone = "GMT", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date announcementCreateTime;

    @JsonFormat(locale = "zh", timezone = "GMT", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date announcementLastModifyTime;
}
