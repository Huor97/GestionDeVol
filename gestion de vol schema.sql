DROP DATABASE IF EXISTS gestionDeVolSchema;
CREATE DATABASE gestionDeVolSchema;
USE gestionDeVolSchema;

#**************
# crée table Pilot 
#**************
create table pilot(
idPilot int not null,
nom varchar (40) not null,
site varchar (40) not null,
primary key (idPilot))engine = InnoDB;

#**************
# crée table Avion
#**************
create table avion(
idAvion int not null,
constructeur varchar (100) not null,
modele varchar (100),
capacite int not null,
site varchar (100) not null,
primary key (idAvion))engine = InnoDB;

#**************
# crée table Vol 
#**************
create table vol(
idVol varchar (100),
idAvion int not null,
idPilot int not null, -- ce que je doive dire not null auto increment car il vienne de table pilote 
siteDepart varchar (80),
siteArrivee varchar (80),
heureDepart time not null,
heureDarrive time not null,
primary key (idVol),
constraint fk_vol_pilot foreign key (idPilot) references pilot (idPilot),
constraint fk_vol_avion foreign key(idAvion) references avion (idAvion))engine = InnoDB;