/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.btl.service;

import com.btl.pojo.Coach;
import java.util.List;

public interface CoachService {

    List<Coach> getCoach(int page, boolean active);

    long countCoach(boolean active);
}
