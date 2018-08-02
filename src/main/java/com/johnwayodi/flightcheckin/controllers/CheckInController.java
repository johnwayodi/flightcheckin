package com.johnwayodi.flightcheckin.controllers;

import com.johnwayodi.flightcheckin.dto.Reservation;
import com.johnwayodi.flightcheckin.dto.ReservationUpdateRequest;
import com.johnwayodi.flightcheckin.integration.ReservationRestClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckInController {

    private final ReservationRestClient restClient;

    @Autowired
    public CheckInController(ReservationRestClient restClient) {
        this.restClient = restClient;
    }

    @RequestMapping("/showStartCheckIn")
    public String showStartCheckIn(){
        return "startCheckIn";
    }

    @RequestMapping("/startCheckIn")
    public String startChaeckIn(
            @RequestParam("reservationId") Long reservationId,
            ModelMap modelMap){
        Reservation reservation = restClient.findReservation(reservationId);
        modelMap.addAttribute("reservation", reservation);
        return "displayReservationDetails";
    }

    @RequestMapping("/completeCheckIn")
    public String completeCheckIn(@RequestParam("reservationId") Long reservationId,
                                  @RequestParam("numberOfBags") int numberOfBags){
        ReservationUpdateRequest updateRequest = new ReservationUpdateRequest();
        updateRequest.setId(reservationId);
        updateRequest.setCheckedIn(true);
        updateRequest.setNumberOfBags(numberOfBags);
        restClient.updateReservation(updateRequest);
        return "checkInConfirmation";
    }
}
