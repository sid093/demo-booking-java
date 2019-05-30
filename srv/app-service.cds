using {app.booking as booking} from '../db/booking-model';
using {app.flight as flight} from '../db/flight-model';

service AppService {

    entity Bookings    	as projection on booking.Bookings;
    
    @readonly entity FlightRoutes   as projection on flight.FlightRoutes;
    @readonly entity Airports      as projection on flight.Airports;
    @readonly entity Airline      as projection on flight.Airline;
}
