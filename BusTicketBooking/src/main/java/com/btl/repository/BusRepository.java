/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.btl.repository;

import com.btl.pojo.Bus;
import java.util.List;

public interface BusRepository {

    List<Bus> getBus(String keyword);

    boolean addBus(Bus bus);
}
