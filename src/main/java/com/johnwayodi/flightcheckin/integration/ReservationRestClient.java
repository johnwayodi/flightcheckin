package com.johnwayodi.flightcheckin.integration;

import com.johnwayodi.flightcheckin.dto.Reservation;
import com.johnwayodi.flightcheckin.dto.ReservationUpdateRequest;

public interface ReservationRestClient {

    public Reservation findReservation(Long id);
    public Reservation updateReservation(ReservationUpdateRequest request);
}
