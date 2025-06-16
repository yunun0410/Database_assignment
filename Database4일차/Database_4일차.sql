create table PetOwners(
	ownerID int primary key auto_increment,
    name varchar(100) not null,
	contact varchar(200) not null
);

create table Pets(
	petID int primary key auto_increment,
    ownerID int not null,
    name varchar(100) not null,
    species varchar(100),
    breed varchar(100),
    foreign key (ownerID) references PetOwners (ownerID)
);

create table Rooms(
	roomID int primary key auto_increment,
    roomNumber int not null unique,
    roomType varchar(100),
    pricePerNight decimal(10,2) not null
);

create table Reservations(
	reservationID int primary key auto_increment,
    petID int not null,
    roomID int not null,
    startDate date not null,
    endDate date not null,
    foreign key (petID) references Pets (petID),
    foreign key (roomID) references Rooms (roomID)
);

CREATE TABLE Services (
    serviceID int primary key auto_increment,
    eservationID int not null,
    serviceName varchar(100),
    servicePrice decimal(10,2),
    foreign key (reservationID) references Reservations(reservationID)
    );
    