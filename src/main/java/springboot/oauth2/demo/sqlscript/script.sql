INSERT INTO authority(id, name) VALUES (1, 'COMPANY_CREATE');
INSERT INTO authority(id, name) VALUES (2, 'COMPANY_READ');
INSERT INTO authority(id, name) VALUES (3, 'COMPANY_UPDATE');
INSERT INTO authority(id, name) VALUES (4, 'COMPANY_DELETE');
INSERT INTO authority(id, name) VALUES (5, 'DEPARTMENT_CREATE');
INSERT INTO authority(id, name) VALUES (6, 'DEPARTMENT_READ');
INSERT INTO authority(id, name) VALUES (7, 'DEPARTMENT_UPDATE');
INSERT INTO authority(id, name) VALUES (8, 'DEPARTMENT_DELETE');


INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (1, 'admin', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', FALSE, FALSE, FALSE, TRUE);
INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (2, 'reader', /*reader1234*/'$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe', FALSE, FALSE, FALSE, TRUE);
INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (3, 'modifier', /*modifier1234*/'$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG', FALSE, FALSE, FALSE, TRUE);
INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (4, 'reader2', /*reader1234*/'$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea', FALSE, FALSE, FALSE, TRUE);

INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 1);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 2);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 3);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 4);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 5);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 6);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 7);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 8);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 9); //
INSERT INTO users_authorities(user_id, authority_id) VALUES (2, 2);
INSERT INTO users_authorities(user_id, authority_id) VALUES (2, 6);
INSERT INTO users_authorities(user_id, authority_id) VALUES (3, 3);
INSERT INTO users_authorities(user_id, authority_id) VALUES (3, 7);
INSERT INTO users_authorities(user_id, authority_id) VALUES (4, 9); //