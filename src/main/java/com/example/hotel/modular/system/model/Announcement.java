package com.example.hotel.modular.system.model;

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
public class Announcement {
    private Long announcementId;

    private String announcementValue;

    private Date announcementCreateTime;

    private Date announcementLastModifyTime;
}
