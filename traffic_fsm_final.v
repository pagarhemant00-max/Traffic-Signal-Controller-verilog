
module traffic_fsm_final #(
    parameter GREEN_LOW_TIME = 5,
    parameter GREEN_MEDIUM_TIME = 10,
    parameter GREEN_HIGH_TIME = 20,
    parameter YELLOW_TIME = 3,
    parameter RED_TIME = 8,
    parameter PEDESTRIAN_TIME = 6
)(
    input wire clk,
    input wire reset,
    input wire timer_expired,
    input wire [1:0] vehicle_density,
    input wire pedestrian_request,

    output reg [31:0] timer_limit,
    output reg red,
    output reg yellow,
    output reg green,
    output reg pedestrian_active
);

localparam GREEN = 2'b00;
localparam YELLOW = 2'b01;
localparam RED = 2'b10;
localparam PEDESTRIAN = 2'b11;

reg [1:0] current_state, next_state;
reg ped_request_latched;

// Pedestrian request latch
always @(posedge clk or posedge reset)
begin
    if(reset)
        ped_request_latched <= 0;

    else if(pedestrian_request)
        ped_request_latched <= 1;

    else if(current_state == PEDESTRIAN)
        ped_request_latched <= 0;
end

// State register
always @(posedge clk or posedge reset)
begin
    if(reset)
        current_state <= GREEN;

    else
        current_state <= next_state;
end

// Next state logic
always @(*) begin

    next_state = current_state;

    case(current_state)

        GREEN:
            if(timer_expired)
                next_state = YELLOW;

        YELLOW:
            if(timer_expired)
                next_state = RED;

        RED:
            if(timer_expired) begin
                if(ped_request_latched)
                    next_state = PEDESTRIAN;
                else
                    next_state = GREEN;
            end

        PEDESTRIAN:
            if(timer_expired)
                next_state = GREEN;

        default:
            next_state = GREEN;

    endcase
end

// Output logic
always @(*) begin

    red = 0;
    yellow = 0;
    green = 0;
    pedestrian_active = 0;

    timer_limit = GREEN_LOW_TIME;

    case(current_state)

        GREEN: begin
            green = 1;

            case(vehicle_density)

                2'b00:
                    timer_limit = GREEN_LOW_TIME;

                2'b01:
                    timer_limit = GREEN_MEDIUM_TIME;

                2'b10:
                    timer_limit = GREEN_HIGH_TIME;

                default:
                    timer_limit = GREEN_HIGH_TIME;

            endcase
        end

        YELLOW: begin
            yellow = 1;
            timer_limit = YELLOW_TIME;
        end

        RED: begin
            red = 1;
            timer_limit = RED_TIME;
        end

        PEDESTRIAN: begin
            red = 1;
            pedestrian_active = 1;
            timer_limit = PEDESTRIAN_TIME;
        end

        default: begin
            red = 1;
            timer_limit = RED_TIME;
        end

    endcase
end

endmodule
