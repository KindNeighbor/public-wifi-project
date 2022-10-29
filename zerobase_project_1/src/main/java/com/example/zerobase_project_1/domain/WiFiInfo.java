package com.example.zerobase_project_1.domain;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
public class WiFiInfo {
    String list_total_count;
    ResultList RESULT;
    ArrayList<RowList> row = new ArrayList<>();
}
