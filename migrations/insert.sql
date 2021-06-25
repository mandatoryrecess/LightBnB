-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name VARCHAR(255) NOT NULL,
--   email VARCHAR(255) NOT NULL,
--   password VARCHAR(255) NOT NULL
-- );

-- INSERT INTO users(name, email, password)
-- VALUES ('rossanne', '1@1.com', 1);

-- SELECT reservations.*, property_reviews.*, properties.*
-- FROM reservations 
-- JOIN users ON reservations.guest_id = users.id 
-- JOIN property_reviews on reservations.id = reservation_id
-- JOIN properties ON properties.id = reservations.property_id 
-- WHERE reservations.guest_id = 2



  SELECT properties.*, avg(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE 1 = 1 AND city LIKE 'Vancouver'
  GROUP BY properties.id
  ORDER BY cost_per_night

--  const getAllProperties = (options, limit = 10) => {
--   return pool
--     .query(`SELECT * FROM properties LIMIT $1`, [limit])
--     .then((result) => {
--       console.log(result.rows)
--       return result.rows;
--     })
--     .catch((err) => {
--       console.log(err.message)
--       return err.message;
--     });
-- };
-- exports.getAllProperties = getAllProperties;

