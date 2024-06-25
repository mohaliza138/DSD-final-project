module TB;
    reg clk,
        car_entered,
        is_uni_car_entered,
        car_exited,
        is_uni_car_exited;

    wire signed [31:0] uni_parked_car, 
        parked_car,
        uni_vacated_space, 
        vacated_space;
    wire uni_is_vacated_space, 
        is_vacated_space;



    PARKING_CU testing_instance (
        .clk(clk),
        .is_uni_car_entered(is_uni_car_entered),
        .car_exited(car_exited),
        .car_entered(car_entered),
        .is_uni_car_exited(is_uni_car_exited),
        .uni_vacated_space(uni_vacated_space),
        .parked_car(parked_car),
        .uni_parked_car(uni_parked_car),
        .uni_is_vacated_space(uni_is_vacated_space),
        .vacated_space(vacated_space),
        .is_vacated_space(is_vacated_space)
    );


    always #1 clk = ~clk;

    initial begin

        //Init
        clk = 0;
        car_entered = 0;
        is_uni_car_entered = 0;
        car_exited = 0;
        is_uni_car_exited = 0;
        @(posedge clk);

        $display("1)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student arrives
        #10
        car_entered = 1;
        is_uni_car_entered = 1;
        #0 car_entered = 0;
        #0

        $display("2)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 regular person arrives
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #0

        $display("3)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person leaves and another arrives
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("4)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student leaves and another arrives
        #10
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 1;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("5)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student arrives and a person leaves
        #10
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 0;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("6)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrives and a student leaves
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 1;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("7)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //100 students arrive
        #10
        repeat (100) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("8)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //499 people arrive
        #10 
        repeat (499) begin
            
            car_entered = 1;
            is_uni_car_entered = 0;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("9)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrives. But the parking is full:(
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #0;
        @(posedge clk);

        $display("10) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        
        //Waiting till 8
        while (testing_instance.daytime < 'd8) begin
            @(testing_instance.daytime);
        end
        @(posedge clk);

        $display("11) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 12
        while (testing_instance.daytime < 'd12) begin
            @(testing_instance.daytime);
        end
        @(posedge clk);

        $display("12) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 13
        @(testing_instance.daytime);
        @(posedge clk);

        $display("13) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //A person arrives but people have already taken more space than they should have done
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #10

        $display("14) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 14
        @(testing_instance.daytime);
        @(posedge clk);

        $display("15) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //200 people leave. People's count will become equal to their capacity
        repeat(200) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #0 car_exited = 0;
            #0;
        end

        #10
        $display("16) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waintin till 15
        @(testing_instance.daytime);
        @(posedge clk);

        $display("17) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //299 students arrive and the parking becomes full.
        #10
        repeat(299) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #0 car_entered = 0;
            #0;
        end


        $display("18) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //New student entrance. It should fail becouse the parking is full.
        #10
        car_entered = 1;
        is_uni_car_entered = 1;
        #0 car_entered = 0;
        #0;


        $display("19) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //410 student departures. 400 valids and 10 ignored ones(invalid).
        repeat(410) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #0 car_exited = 0;
            #0;
        end

        $display("20) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 16
        @(testing_instance.daytime);
        @(posedge clk);


        $display("21) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 17
        @(testing_instance.daytime);
        @(posedge clk);


        $display("22) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //310 people exit. 300 ones are valid and 10 others would be ignored.
        repeat(310) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #0 car_exited = 0;
            #0;
        end

        $display("23) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waintin till 18
        @(testing_instance.daytime);
        @(posedge clk);

        $display("24) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 19
        @(testing_instance.daytime);
        @(posedge clk);


        $display("25) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 20
        @(testing_instance.daytime);
        @(posedge clk);


        $display("26) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 21
        @(testing_instance.daytime);
        @(posedge clk);


        $display("27) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 22
        @(testing_instance.daytime);
        @(posedge clk);


        $display("28) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waintin till 23
        @(testing_instance.daytime);
        @(posedge clk);


        $display("29) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //Waintin till 0
        @(testing_instance.daytime);
        @(posedge clk);


        $display("30) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arries and another one leaves. As the parking is empty, no one can exit so just the arrival is going to happen.
        #10
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #0 car_entered = 0;
        car_exited = 0;
        #0
        

        $display("31) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                testing_instance.daytime, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        $stop;
    end

endmodule

