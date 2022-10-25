/* Create sample table */
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Persons
VALUES 
    (
        1,
        'Markets',
        'Kala',
        'Test123',
        'Abu Dhabi'
    ),
    (
        2,
        'Doe',
        'John',
        'Test234',
        'Kuala Lumpur'
    ),
    (
        3,
        'Albab',
        'Ahmad',
        'Test456',
        'New Delhi'
    )