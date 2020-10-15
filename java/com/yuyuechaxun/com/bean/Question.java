package com.yuyuechaxun.com.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Question {
    int quid;
    String qutitle;
    String quchoose;
    int qunum;
    Integer exid;
    int quscore;
    String qutype;
}
