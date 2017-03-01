INSERT INTO USER_PROFILE(type)
VALUES ('SALES');

INSERT INTO USER_PROFILE(type)
VALUES ('BACKOFFICE');

INSERT INTO USER_PROFILE(type)
VALUES ('DIRECTOR');

INSERT INTO USER_PROFILE(type)
VALUES ('STUDENT');

INSERT INTO USER_PROFILE(type)
VALUES ('INTERNS');


/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email, state)
VALUES ('bbngoc','$2a$10$O/lWTgEzBj6wJjOwPq5/WelJXSiadr1UxlRbTBPZ5fPjwytGHtvn.', 'Admin','Admin','Admin@xyz.com', 'Active');


/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM app_user user, user_profile profile
  where user.sso_id='bbngoc' and profile.type='SALES';