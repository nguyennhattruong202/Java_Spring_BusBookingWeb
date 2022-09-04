/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service;

import com.btl.pojo.Coachline;
import java.util.List;
import java.util.Map;

public interface CoachlineService {

    List<Coachline> getCoachline(Map<String, String> params, int page);

    int countCoachline();

    boolean addCoachline(Coachline coachline);
}
