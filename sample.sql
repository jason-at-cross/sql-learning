-- Create a table for storing user information
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CreatedAt DATE DEFAULT CURRENT_DATE
);

-- Insert some sample data into the Users table
INSERT INTO Users (UserID, Username, Email)
VALUES
    (1, 'johndoe', 'johndoe@example.com'),
    (2, 'janedoe', 'janedoe@example.com'),
    (3, 'admin', 'admin@example.com');

-- Query to fetch all users
SELECT * FROM Users;

-- Query to fetch a specific user by Username
SELECT * FROM Users WHERE Username = 'johndoe';

-- Update a user's email
UPDATE Users
SET Email = 'newemail@example.com'
WHERE UserID = 1;

-- Delete a user from the table
DELETE FROM Users WHERE UserID = 3;
