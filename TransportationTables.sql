-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gcZ7Fl
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE transportation_employment (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    pipeline int  NOT NULL ,
    water int  NOT NULL ,
    rail int  NOT NULL ,
    air int  NOT NULL ,
    transit_and_ground_passenger_transportation int  NOT NULL ,
    truck int  NOT NULL ,
    unemployment_Rate float8  NOT NULL ,
    labor_force_participation_rate float8  NOT NULL ,
    unemployed int  NOT NULL ,
    PRIMARY KEY (
        date
    )
);

CREATE TABLE highway_vehicle_miles_traveled (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    hvmt_all_systems float8  NOT NULL ,
    hvmt_total_rural float8  NOT NULL ,
    hvmt_other_rural float8  NOT NULL ,
    hvmt_rural_other_arterial float8  NOT NULL ,
    hvmt_rural_interstate float8  NOT NULL ,
    PRIMARY KEY (
        date
    )
);

CREATE TABLE personal_spending_on_transportation (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    transportation_services float8  NOT NULL ,
    gas_and_other_energy_goods float8  NOT NULL ,
    motor_vehicles_and_parts float8  NOT NULL ,
    PRIMARY KEY (
        date    
	)
);

CREATE TABLE passenger_rail (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    passengers int  NOT NULL ,
    passenger_miles int  NOT NULL ,
    total_train_miles int  NOT NULL ,
    employee_hours_worked int  NOT NULL ,
    yard_switching_miles int  NOT NULL ,
    PRIMARY KEY (
        date
    )
);

CREATE TABLE airline_traffic (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    total int  NOT NULL ,
    international int  NOT NULL ,
    domestic int  NOT NULL ,
    PRIMARY KEY (
        date
    )
);

CREATE TABLE air_carrier_cargo_millionsofrevenuetonmiles (
    indexid int  NOT NULL ,
    date date  NOT NULL ,
    international float8  NOT NULL ,
    domestic float8  NOT NULL ,
    PRIMARY KEY (
        date
    )
);

ALTER TABLE highway_vehicle_miles_traveled ADD CONSTRAINT fk_highway_vehicle_miles_traveled_date FOREIGN KEY(date)
REFERENCES transportation_employment (date);

ALTER TABLE personal_spending_on_transportation ADD CONSTRAINT fk_personal_spending_on_transportation_date FOREIGN KEY(date)
REFERENCES transportation_employment (date);

ALTER TABLE passenger_rail ADD CONSTRAINT fk_passenger_rail_date FOREIGN KEY(date)
REFERENCES transportation_employment (date);

ALTER TABLE airline_traffic ADD CONSTRAINT fk_airline_traffic_date FOREIGN KEY(date)
REFERENCES transportation_employment (date);

ALTER TABLE air_carrier_cargo_millionsofrevenuetonmiles ADD CONSTRAINT fk_air_carrier_cargo_millionsofrevenuetonmiles_date FOREIGN KEY(date)
REFERENCES transportation_employment (date);

