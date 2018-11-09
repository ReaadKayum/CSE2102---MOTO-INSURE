INSERT into `customers` ( `CID`, `FName`, `LName`, `DOB`, `Address`, `Tele`) Values ( );
INSERT into `policy` (`PID`, `coverage`, `cost`) Values ( );
INSERT into `owns` (`CID`, `PID`, `Date`, `Status`) Values ( );
INSERT into `makes_claim` (`CID, `PID`, `Date`, `Damage_Assessment`) Values ( );


SELECT * FROM `customers`;
SELECT * FROM `policy`;
SELECT * FROM `owns`;
SELECT * FROM `makes_claim``;
