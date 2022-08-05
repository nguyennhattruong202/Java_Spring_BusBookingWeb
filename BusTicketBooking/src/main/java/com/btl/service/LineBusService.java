/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.service;

import com.btl.pojo.LineBus;
import java.util.List;
import java.util.Map;

public interface LineBusService {

    List<LineBus> getAllLineBus(Map<String, String> params, int page);

    int countLineBus();

    boolean addLineBus(LineBus lb);
}
