package com.example.hotel.modular.hotel.controller;

import com.example.hotel.core.util.ExcelExportUtils;
import com.example.hotel.modular.hotel.model.Customer;
import com.example.hotel.modular.hotel.service.CustomerService;
import com.example.hotel.modular.system.model.Log;
import com.example.hotel.modular.system.service.LogService;
import com.google.common.net.HttpHeaders;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/excel")
@CrossOrigin
public class ExcelController {
    @Resource
    private CustomerService customerService;
    @Resource
    private LogService logService;

    @GetMapping("/download2")
    public void downAll2(HttpServletResponse response)throws Exception{
        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("日志表");
        List<Log> classmateList = logService.selectLogList1();
        //设置要导出的文件的名字
        String fileName = "log"+ ".xls";
        //新增数据行，并且设置单元格数据
        int rowNum = 1;
        String[] headers = { "姓名", "角色","状态", "IP地址", "设备类型","浏览器类型"};
        //headers表示excel表中第一行的表头
        HSSFRow row = sheet.createRow(0);
        //在excel表中添加表头
        for(int i=0;i<headers.length;i++){
            HSSFCell cell = row.createCell(i);
            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
            cell.setCellValue(text);
        }
        //在表中存放查询到的数据放入对应的列
        for (Log table : classmateList) {
            HSSFRow row1 = sheet.createRow(rowNum);
            row1.createCell(0).setCellValue(table.getLogUserName());
            row1.createCell(1).setCellValue(table.getLogUserRole());

            row1.createCell(2).setCellValue(table.getLogOperateContent());
            row1.createCell(3).setCellValue(table.getLogIpAddress());
            row1.createCell(4).setCellValue(table.getLogSystemType());
            row1.createCell(5).setCellValue(table.getLogBrowserType());
            rowNum++;
        }
        response.setContentType("application/octet-stream");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
        response.flushBuffer();
        workbook.write(response.getOutputStream());
    }
    //客户表
    @GetMapping("/download1")
    public void downAll(HttpServletResponse response)throws Exception{
        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("客户表");
        List<Customer> classmateList = customerService.selectCustomerList1();
        //设置要导出的文件的名字
        String fileName = "customer"+ ".xls";
        //新增数据行，并且设置单元格数据
        int rowNum = 1;
        String[] headers = { "登陆账号", "姓名","手机号", "身份证号", "创建时间","更新时间"};
        //headers表示excel表中第一行的表头
        HSSFRow row = sheet.createRow(0);
        //在excel表中添加表头
        for(int i=0;i<headers.length;i++){
            HSSFCell cell = row.createCell(i);
            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
            cell.setCellValue(text);
        }
        //在表中存放查询到的数据放入对应的列
        for (Customer table : classmateList) {
            HSSFRow row1 = sheet.createRow(rowNum);
            row1.createCell(0).setCellValue(table.getCustomerId());
            row1.createCell(1).setCellValue(table.getCustomerLoginName());

            row1.createCell(2).setCellValue(table.getCustomerPhone());
            row1.createCell(3).setCellValue(table.getCustomerCardNumber());
            row1.createCell(4).setCellValue(table.getCustomerCreateTime());
            row1.createCell(5).setCellValue(table.getCustomerLastModifyTime());
            rowNum++;
        }
        response.setContentType("application/octet-stream");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
        response.flushBuffer();
        workbook.write(response.getOutputStream());
    }

}


