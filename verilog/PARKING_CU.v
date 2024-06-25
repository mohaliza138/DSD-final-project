module PARKING_CU (
    uni_parked_car,
    parked_car,
    uni_vacated_space,
    vacated_space,
    uni_is_vacated_space,
    is_vacated_space,
    is_uni_car_entered,
    car_entered, 
    car_exited,
    is_uni_car_exited,
    clk
    );

    output integer uni_parked_car = 'd0, 
        parked_car = 'd0, 
        uni_vacated_space = 'd700, 
        vacated_space = 'd500;
    output reg uni_is_vacated_space = 'd1, 
        is_vacated_space = 'd1;
    input car_entered, 
        is_uni_car_entered, 
        car_exited, 
        is_uni_car_exited, 
        clk;

    integer sec = 'd0, 
        daytime = 'd0, 
        uni_entrances = 'd0, 
        reg_entrances = 'd0, 
        uni_departures = 'd0, 
        reg_departures = 'd0, 
        reg_capacity = 'd500;


    always @(posedge clk) begin
        if (sec == 'd3599) begin // each hour is 3600 time units(seconds)
            sec = 'd0;

            if (daytime == 'd23) begin
                daytime = 'd0;
            end
            else begin
                daytime = daytime + 'd1;
            end

            if (daytime >= 'd8 && daytime < 'd13) 
                reg_capacity = 'd200;
            else if (daytime == 'd13)
                reg_capacity = 'd250;
            else if (daytime == 'd14)
                reg_capacity = 'd300;
            else if (daytime == 'd15)
                reg_capacity = 'd350;
            else
                reg_capacity = 'd500;
        end
        else begin
            sec = sec + 'd1;
        end
    end


    always @(*) begin
        parked_car = reg_entrances - reg_departures; // Number of regular people, whose car is currently inside the parking.
        uni_parked_car = uni_entrances - uni_departures; // Number of university students, whose car is currently inside the parking.
        uni_vacated_space = 'd700 - parked_car - uni_parked_car; // As university students can park as regular people, they can park within any space available just without priority.
        if ('d700 - reg_capacity < uni_parked_car) // If there was at least one person from university who parked as a regular person, It means no university student is going to have priority. So all the left space belongs to regular people.
            vacated_space = 'd700 - parked_car - uni_parked_car;
        else // If there was no university student inside regular positions, The capacity is going to be calculated this way.
            begin
            vacated_space = reg_capacity - parked_car; // $display(vacated_space, reg_capacity, parked_car);
            end

        if (uni_vacated_space > 'd0) // If there was a space for university students, make this output 1. ow. 0.
            uni_is_vacated_space = 'd1;
        else
            uni_is_vacated_space = 'd0;

        if (vacated_space > 'd0) // If there was a space for regular people, make this output 1. ow. 0.
            is_vacated_space = 'd1;
        else
            is_vacated_space = 'd0;
            
        // Notice: the above capacities can be negetive based on the paritioning changes during the day.
    end


    always @(posedge car_exited) begin
        if (is_uni_car_exited) begin
            if (uni_entrances > uni_departures) 
                uni_departures = uni_departures + 'd1;
        end else begin
            if (reg_entrances > reg_departures)
                reg_departures = reg_departures + 'd1;
        end
    end


    always @(posedge car_entered) begin
        if (is_uni_car_entered) begin
            if (uni_vacated_space > 0) begin
                uni_entrances = uni_entrances + 'd1;
            end
        end else begin
            if (vacated_space > 0) begin
                reg_entrances = reg_entrances + 'd1;
            end
        end
    end


endmodule

